import 'dart:convert';
import 'dart:io';

import 'package:boardshare/packages/network/api_exception.dart';
import 'package:boardshare/packages/network/modification_json_response.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

const apiBaseUrl = 'http://localhost:8080/api/v1';

Future<T> fetchData<T>(
  String urlTemplate, {
  String? token,
  required T Function(Map<String, dynamic>) fromJson,
  dynamic requestData,
}) async {
  String finalUrl = '$apiBaseUrl$urlTemplate';

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

  final response = await http.get(
    Uri.parse(finalUrl),
    headers: {
      if (token != null) HttpHeaders.authorizationHeader: 'Bearer $token',
    },
  );

  if (response.statusCode == HttpStatus.ok) {
    final Map<String, dynamic> jsonResponse = json.decode(response.body);
    return fromJson(jsonResponse);
  } else {
    throw ApiException(
        response.statusCode, '[http]Failed to GET data: ${response.body}');
    // throw Exception(
    //     '[http]Failed to GET data: [${response.statusCode}] ${response.body}');
  }
}

Future<ModificationJsonResponse<T>> sendData<T>(
  String url, {
  required String method,
  String? token,
  required T Function(Map<String, dynamic>) fromJsonT,
  required dynamic requestData, // Freezed Model
}) async {
  Uri uri = Uri.parse('$apiBaseUrl$url');
  Map<String, String> headers = {
    'Content-Type': 'application/json; charset=UTF-8',
    if (token != null) HttpHeaders.authorizationHeader: 'Bearer $token',
  };
  // String body = jsonEncode(requestData.toJson());
  String body = jsonEncode(
    requestData is Map<String, dynamic> ? requestData : requestData.toJson(),
  );

  if (kDebugMode) print(body);

  http.Response response;
  // Response response;

  try {
    switch (method) {
      case 'POST':
        response = await http.post(uri, headers: headers, body: body);
        break;
      case 'PUT':
        response = await http.put(uri, headers: headers, body: body);
        break;
      case 'PATCH':
        response = await http.patch(uri, headers: headers, body: body);
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
      final responseBody =
          response.body.isNotEmpty ? json.decode(response.body) : {};
      // response.data.isNotEmpty ? json.decode(response.data) : {};
      final jsonResponse = ModificationJsonResponse<T>.fromJson(
        responseBody as Map<String, dynamic>,
        (data) => fromJsonT(data),
      );

      if (jsonResponse.error) {
        throw ApiException(response.statusCode, jsonResponse.message);
      } else {
        return jsonResponse;
      }
    } else {
      throw ApiException(response.statusCode,
          '[http]Failed to $method data: ${response.body}');
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
  final http.Response response = await http.delete(
    Uri.parse(url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      if (token != null) HttpHeaders.authorizationHeader: 'Bearer $token',
    },
  );

  if (response.statusCode == HttpStatus.ok) {
    return true;
  } else {
    throw ApiException(
        response.statusCode, '[http]Failed to DELETE data: ${response.body}');
    // throw Exception(
    //     '[http]Failed to DELETE data: [${response.statusCode}] ${response.body}');
  }
}
