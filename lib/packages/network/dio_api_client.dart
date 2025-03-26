import 'dart:convert';
import 'dart:io';

import 'package:boardshare/app_env.dart';
import 'package:boardshare/packages/network/query_json_response.dart';
import 'package:boardshare/packages/network/rest_api_wrapper.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'api_exception.dart';
import 'modification_json_response.dart';

final dioProvider = Provider(DioApiClient.new);

class DioApiClient {
  final Ref ref;
  late final Dio _dio;
  CookieJar? _cookieJar; // ✅ cookie storage

  DioApiClient(this.ref, {Dio? dio}) {
    _dio = dio ?? Dio();

    _dio.options.baseUrl = kApiLocalUrl;
    if (kAppEnv == "test") _dio.options.baseUrl = kApiTestUrl;
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
      onRequest: (options, handler) {
        if (kDebugMode) {
          print("📡 Sending Request to: ${options.baseUrl}${options.path}");
          print(options.headers);
          print(options.method);
          print(options.cancelToken);
          print(options.queryParameters);
        }
        return handler.next(options);
      },
      onResponse: (response, handler) async {
        // if (response.headers.map.containsKey('Set-Cookie')) {
        //   print("Received Cookies: ${response.headers['Set-Cookie']}");
        // }
        if (kDebugMode) {
          print("📌 Received Cookies: ${response.headers['Set-Cookie']}");
          print(response.statusCode);
          print(response.headers);
          print(response.realUri);
          print(response.data);
        }
        return handler.next(response);
      },
    ));
  }

  Future<Response> _get(
    String urlTemplate,
    String? token,
    dynamic requestData,
    CancelToken? cancelToken,
  ) async {
    // String finalUrl = '$apiBaseUrl$urlTemplate';
    String finalUrl = urlTemplate;

    // check if requestData is present.
    // if so, make path parameter and query string
    if (requestData != null) {
      // convert Freezed model into JSON
      Map<String, dynamic> requestMap;
      if (requestData is Map<String, dynamic>) {
        requestMap = requestData;
      } else {
        requestMap = requestData.toJson();
      }

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

      if (kDebugMode) {
        print('==> fetchData().queryString: $queryString');
      }

      if (queryString.isNotEmpty) {
        finalUrl = '$finalUrl?$queryString';
      }
    }

    // return finalUrl;

    return await _dio.get(
      finalUrl,
      cancelToken: cancelToken,
      options: Options(
        headers: {
          if (token != null) HttpHeaders.authorizationHeader: 'Bearer $token',
        },
        validateStatus: (status) {
          return status! < 500; // 500 이상만 예외 발생
        },
      ),
    );
  }

  Future<QueryJsonResponseS<T>> fetchSingle<T>(
    String urlTemplate, {
    String? token,
    dynamic
        requestData, // Map<String, dynamic> or Freezed Model Class which must have toJson
    required T Function(Map<String, dynamic>) fromJsonT,
    CancelToken? cancelToken,
  }) async {
    final response = await _get(urlTemplate, token, requestData, cancelToken);
    // final response = await http.get(

    if (response.statusCode == HttpStatus.ok) {
      final jsonResponse = response.data ?? {};
      // final Map<String, dynamic> jsonResponse = response.data ?? {};
      // json.decode(response.data ?? {});

      if (kDebugMode) {
        print('');
        print('');
        print('');
        print(
            'fetchData().jsonResponse runtimeType: ${jsonResponse.runtimeType}');
        print(
            'fetchData().jsonResponse[data] runtimeType: ${jsonResponse['data'].runtimeType}');
        print('');
        print('');
        print('');
        print(jsonResponse['data']);
        print('');
        print('');
        print('');
      }

      return QueryJsonResponseS.fromJson(jsonResponse, fromJsonT);
    } else {
      throw ApiException(response.statusCode ?? 0,
          '[http]Failed to GET data: ${response.data}');
      // throw Exception(
      //     '[http]Failed to GET data: [${response.statusCode}] ${response.body}');
    }
  }

  Future<QueryJsonResponseL<T>> fetchList<T>(
    String urlTemplate, {
    String? token,
    dynamic
        requestData, // Map<String, dynamic> or Freezed Model Class which must have toJson
    required T Function(Map<String, dynamic>) fromJsonT,
    CancelToken? cancelToken,
  }) async {
    final response = await _get(urlTemplate, token, requestData, cancelToken);
    // final response = await http.get(

    if (response.statusCode == HttpStatus.ok) {
      final jsonResponse = response.data ?? {};
      // final Map<String, dynamic> jsonResponse = response.data ?? {};
      // json.decode(response.data ?? {});

      if (kDebugMode) {
        print('');
        print('');
        print('');
        print(
            'fetchData().jsonResponse runtimeType: ${jsonResponse.runtimeType}');
        print(
            'fetchData().jsonResponse[data] runtimeType: ${jsonResponse['data'].runtimeType}');
        print('');
        print('');
        print('');
        print(jsonResponse['data']);
        print('');
        print('');
        print('');
      }

      return QueryJsonResponseL.fromJson(jsonResponse, fromJsonT);
    } else {
      throw ApiException(response.statusCode ?? 0,
          '[http]Failed to GET data: ${response.data}');
      // throw Exception(
      //     '[http]Failed to GET data: [${response.statusCode}] ${response.body}');
    }
  }

  Future<ModificationJsonResponse<T>> sendData<T>(
    String url, {
    required String method,
    String? token,
    required dynamic requestData, // Freezed Model
    required T Function(Map<String, dynamic>) fromJsonT,
    CancelToken? cancelToken,
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
          response = await _dio.post(
            url,
            cancelToken: cancelToken,
            options: Options(
              headers: headers,
              validateStatus: (status) {
                return status! < 500; // 500 이상만 예외 발생
              },
            ),
            data: body,
          );
          break;
        case 'PUT':
          response = await _dio.put(
            url,
            cancelToken: cancelToken,
            options: Options(
              headers: headers,
              validateStatus: (status) {
                return status! < 500; // 500 이상만 예외 발생
              },
            ),
            data: body,
          );
          break;
        case 'PATCH':
          response = await _dio.patch(
            url,
            cancelToken: cancelToken,
            options: Options(
              headers: headers,
              validateStatus: (status) {
                return status! < 500; // 500 이상만 예외 발생
              },
            ),
            data: body,
          );
          break;
        default:
          throw Exception('[http] sendData() argument error');
      }

      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.created ||
          response.statusCode == HttpStatus.accepted) {
        // final responseBody =
        //     response.data.isNotEmpty ? json.decode(response.data) : {};
        // response.data.isNotEmpty ? json.decode(response.data) : {};
        final jsonResponse = ModificationJsonResponse<T>.fromJson(
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
    CancelToken? cancelToken,
  }) async {
    final Response response = await _dio.delete(
      url,
      cancelToken: cancelToken,
      options: Options(
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          if (token != null) HttpHeaders.authorizationHeader: 'Bearer $token',
        },
        validateStatus: (status) {
          return status! < 500; // 500 이상만 예외 발생
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
