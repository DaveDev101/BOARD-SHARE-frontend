import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:convert';

class AuthStorage {
  static final _storage = FlutterSecureStorage();

  static const _tokenKey = 'da101_access_token';
  static const _userKey = 'da101_user_info';

  // store JWT Access Token
  static Future<void> saveToken(String token) async {
    await _storage.write(key: _tokenKey, value: token);
  }

  // retrieve JWT Access Token
  static Future<String?> getToken() async {
    return await _storage.read(key: _tokenKey);
  }

  // save user information
  static Future<void> saveUserInfo(Map<String, dynamic> userInfo) async {
    await _storage.write(key: _userKey, value: jsonEncode(userInfo));
  }

  // retrieve user information
  static Future<Map<String, dynamic>?> getUserInfo() async {
    final data = await _storage.read(key: _userKey);
    return data != null ? jsonDecode(data) : null;
  }

  // clear all stored data
  static Future<void> clear() async {
    await _storage.delete(key: _tokenKey);
    await _storage.delete(key: _userKey);
  }
}
