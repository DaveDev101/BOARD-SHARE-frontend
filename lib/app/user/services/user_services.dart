import 'dart:io';

import 'package:boardshare/app/user/models/signin_result.dart';
import 'package:boardshare/app/user/models/tokens.dart';
import 'package:boardshare/app/user/models/user_org.dart';
import 'package:boardshare/app/user/services/user_authentication.dart';
import 'package:boardshare/packages/data_models/account_role.dart';
import 'package:boardshare/packages/network/api_exception.dart';
import 'package:boardshare/packages/network/dio_api_client.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/user.dart';

final userServicesProvider = Provider(UserServices.new);

class UserServices implements UserAuthentication {
  UserServices(this.ref);

  final Ref ref;

  @override
  Future<(int, String)> signUp({
    required String email,
    required String password,
    required String displayName,
  }) async {
    var u = User(email: email, password: password, displayName: displayName)
        .toJson();
    var uo = UserOrg(orgId: 1, role: AccountRole(roleId: 1)).toJson();
    var rp = {"user": u, "user_org": uo};

    try {
      // var jsonResponse = await sendData(
      var jsonResponse = await ref.read(dioProvider).sendData(
            '/user/sign-up',
            method: 'POST',
            fromJsonT: (json) => (
              json['new_user_id'] as int,
              json['verification_code'] as String,
            ),
            requestData: rp,
          );

      return (jsonResponse.data.$1, jsonResponse.data.$2);
    } on ApiException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> verifySignUpCode({
    required int userId,
    required int orgId,
    required String code,
  }) async {
    var rp = {
      "user_id": userId,
      "organization_id": orgId,
      "verification_code": code
    };

    if (kDebugMode) print(rp);

    try {
      // var jsonResponse = await sendData(
      var jsonResponse = await ref.read(dioProvider).sendData(
            '/user/sign-up',
            method: 'PATCH',
            fromJsonT: (json) => json['verification_code'] as String?,
            requestData: rp,
          );

      return (jsonResponse.data ?? '');
    } on ApiException catch (ae) {
      if (kDebugMode) print('catch ApiException: $ae');
      if (ae.statusCode == HttpStatus.badRequest &&
          ae.message.contains('invalid code')) {
        return 'invalid code';
      } else {
        rethrow;
      }
    } catch (e) {
      if (kDebugMode) print('catch error: $e');
      rethrow;
    }
  }

  @override
  Future<(String, SigninResult)> signIn(
      {required String email, required String password}) async {
    var rp = {"email": email, "password": password};

    if (kDebugMode) print(rp);

    try {
      // var jsonResponse = await sendData(
      var jsonResponse = await ref.read(dioProvider).sendData(
            '/user/sign-in',
            method: 'POST',
            fromJsonT: SigninResult.fromJson,
            requestData: rp,
          );

      return ('', jsonResponse.data);
    } on ApiException catch (ae) {
      if (kDebugMode) print('catch ApiException: $ae');
      if (ae.statusCode == HttpStatus.badRequest &&
          ae.message.contains('invalid credentials')) {
        return (
          'invalid credentials',
          SigninResult(
            tokens: Tokens(accessToken: '', refreshToken: ''),
            user: UserOrg(),
          )
        );
      } else {
        rethrow;
      }
    } catch (e) {
      if (kDebugMode) print('catch error: $e');
      rethrow;
    }
  }

  @override
  Future<(String, SigninResult)> verifyAndSignIn({
    required String email,
    required String password,
    required String code,
  }) async {
    var rp = {"email": email, "password": password, "verification_code": code};

    if (kDebugMode) print(rp);

    try {
      // var jsonResponse = await sendData(
      var jsonResponse = await ref.read(dioProvider).sendData(
            '/user/sign-in',
            method: 'PUT',
            fromJsonT: SigninResult.fromJson,
            requestData: rp,
          );

      return ('', jsonResponse.data);
    } on ApiException catch (ae) {
      if (kDebugMode) print('catch ApiException: $ae');
      if (ae.statusCode == HttpStatus.badRequest &&
          ae.message.contains('invalid credentials')) {
        return (
          'invalid credentials',
          SigninResult(
            tokens: Tokens(accessToken: '', refreshToken: ''),
            user: UserOrg(),
          )
        );
      } else if (ae.message.contains('invalid code')) {
        return (
          'invalid code',
          SigninResult(
            tokens: Tokens(accessToken: '', refreshToken: ''),
            user: UserOrg(),
          )
        );
      } else {
        rethrow;
      }
    } catch (e) {
      if (kDebugMode) print('catch error: $e');
      rethrow;
    }
  }

  @override
  Future<void> signOut() async {
    // await ref.read(dioProvider).
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
