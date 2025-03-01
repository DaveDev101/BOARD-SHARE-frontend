import 'dart:convert';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'api_exception.dart';
import 'json_response.dart';

final dioProvider = Provider(DioApiClient.new);

class DioApiClient {
  final Ref ref;
  late final Dio _dio;
  CookieJar? _cookieJar; // ✅ cookie storage

  DioApiClient(this.ref, {Dio? dio}) {
    _dio = dio ?? Dio();

    _dio.options.baseUrl = "http://localhost:8080/api/v1";
    _dio.options.headers['Accept'] = 'application/json';
    _dio.options.headers['Content-Type'] = 'application/json';

    if (kIsWeb) {
      _dio.options.extra['withCredentials'] = true; // ✅ activate cookies
    }

    if (!kIsWeb) {
      _cookieJar = CookieJar(); // ✅ initialize cookie storage
      _dio.interceptors.add(CookieManager(_cookieJar!)); // ✅ cookie manager
    }

    _dio.interceptors.add(InterceptorsWrapper(
      onResponse: (response, handler) async {
        if (kDebugMode) {
          print('------------- response headers:');
          print(response.headers);
          print('------------- ----------------------------------------------');
        }
        if (response.headers.map.containsKey('set-Cookie')) {
          print("Received Cookies: ${response.headers['Set-Cookie']}");
        }
        return handler.next(response);
      },
    ));
  }

  Future<T> fetchData<T>(
    String urlTemplate, {
    String? token,
    required T Function(Map<String, dynamic>) fromJson,
    dynamic requestData,
  }) async {
    // String finalUrl = '$apiBaseUrl$urlTemplate';
    String finalUrl = urlTemplate;

    // check if requestData is present.
    // if so, make path parameter and query string
    if (requestData != null) {
      // convert Freezed model into JSON
      final Map<String, dynamic> requestMap = requestData.toJson();

      // extract id and place it into path parameter
      if (urlTemplate.contains(':id') && !requestMap.containsKey('id')) {
        throw ArgumentError('The model must contain an "id" field.');
      }
      if (requestMap.containsKey('id')) {
        final idValue = requestMap['id'];
        finalUrl = urlTemplate.replaceAll(':id', idValue.toString());
        requestMap.remove('id');
      }

      // make query string and attach to the url
      final queryString = Uri(queryParameters: requestMap).query;
      if (queryString.isNotEmpty) {
        finalUrl = '$finalUrl?$queryString';
      }
    }

    // final response = await http.get(
    final response = await _dio.get(
      finalUrl,
      options: Options(
        headers: {
          if (token != null) HttpHeaders.authorizationHeader: 'Bearer $token',
        },
      ),
    );

    if (response.statusCode == HttpStatus.ok) {
      print(response.data.runtimeType);
      print(response.data.toString());

      final Map<String, dynamic> jsonResponse = response.data ?? {};
      // json.decode(response.data ?? {});
      return fromJson(jsonResponse);
    } else {
      throw ApiException(response.statusCode ?? 0,
          '[http]Failed to GET data: ${response.data}');
      // throw Exception(
      //     '[http]Failed to GET data: [${response.statusCode}] ${response.body}');
    }
  }

  Future<JsonResponse<T>> sendData<T>(
    String url, {
    required String method,
    String? token,
    required T Function(Map<String, dynamic>) fromJsonT,
    required dynamic requestData, // Freezed Model
  }) async {
    // Uri uri = Uri.parse(url);
    Map<String, String> headers = {
      'Content-Type': 'application/json; charset=UTF-8',
      if (token != null) HttpHeaders.authorizationHeader: 'Bearer $token',
    };
    // String body = jsonEncode(requestData.toJson());
    String body = jsonEncode(
      requestData is Map<String, dynamic> ? requestData : requestData.toJson(),
    );

    if (kDebugMode) print(body);

    // http.Response response;
    Response response;

    try {
      switch (method) {
        case 'POST':
          response = await _dio.post(url,
              options: Options(headers: headers), data: body);
          break;
        case 'PUT':
          response = await _dio.put(url,
              options: Options(headers: headers), data: body);
          break;
        case 'PATCH':
          response = await _dio.patch(url,
              options: Options(headers: headers), data: body);
          break;
        default:
          throw Exception('[http] sendData() argument error');
      }

      if (kDebugMode) {
        print('--------- Cookie -------------');
        // print(response.headers.containsKey('Set-Cookie'));
        // print(response.headers.containsKey('Content-Type'));
        print(response.headers);
        print('');
      }

      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.created ||
          response.statusCode == HttpStatus.accepted) {
        // final responseBody =
        //     response.data.isNotEmpty ? json.decode(response.data) : {};
        // response.data.isNotEmpty ? json.decode(response.data) : {};
        final jsonResponse = JsonResponse<T>.fromJson(
          // responseBody as Map<String, dynamic>,
          (response.data ?? {}) as Map<String, dynamic>,
          (data) => fromJsonT(data),
        );

        if (jsonResponse.error) {
          throw ApiException(response.statusCode ?? 0, jsonResponse.message);
        } else {
          return jsonResponse;
        }
      } else {
        throw ApiException(response.statusCode ?? 0,
            '[http]Failed to $method data: ${response.data}');
        // throw Exception(
        //     '[http]Failed to $method data: [${response.statusCode}] ${response.body}');
      }
    } on ApiException {
      rethrow;
    } catch (e) {
      throw ApiException(-1, 'Unexpected error: $e');
    }
  }

  Future<bool> deleteData(
    String url, {
    required String id,
    String? token,
  }) async {
    final Response response = await _dio.delete(
      url,
      options: Options(
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          if (token != null) HttpHeaders.authorizationHeader: 'Bearer $token',
        },
      ),
    );

    if (response.statusCode == HttpStatus.ok) {
      return true;
    } else {
      throw ApiException(response.statusCode ?? 0,
          '[http]Failed to DELETE data: ${response.data}');
      // throw Exception(
      //     '[http]Failed to DELETE data: [${response.statusCode}] ${response.body}');
    }
  }
}
