import 'dart:io';

import 'package:boardshare/app/user/models/signin_result.dart';
import 'package:boardshare/app/user/models/tokens.dart';
import 'package:boardshare/app/user/services/user_services.dart';
import 'package:boardshare/packages/network/api_exception.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/user_org.dart';

part 'signin_controller.g.dart';

@riverpod
class SigninController extends _$SigninController {
  @override
  FutureOr<(String, SigninResult)> build() async {
    return (
      'initial',
      SigninResult(
        tokens: Tokens(accessToken: '', refreshToken: ''),
        user: UserOrg(),
      ),
    );
  }

  Future<void> signIn(String email, String password) async {
    try {
      final (result, signinResult) = await ref
          .watch(userServicesProvider)
          .signIn(email: email, password: password);

      state = AsyncData((result, signinResult));
    } on ApiException catch (ae) {
      if (ae.statusCode == HttpStatus.forbidden &&
          ae.message.contains('email not verified')) {
        state = AsyncData((
          'email not verified',
          SigninResult(
            tokens: Tokens(accessToken: '', refreshToken: ''),
            user: UserOrg(),
          )
        ));
      }
    } catch (e) {
      if (kDebugMode) print('signinController.signin error: $e');
      rethrow;
    }
  }

  Future<void> verifyAndSignIn(
      String email, String password, String code) async {
    try {
      final (result, signinResult) = await ref
          .watch(userServicesProvider)
          .verifyAndSignIn(email: email, password: password, code: code);

      state = AsyncData((result, signinResult));
    } on ApiException catch (ae) {
      if (ae.statusCode == HttpStatus.forbidden &&
          ae.message.contains('email not verified')) {
        state = AsyncData((
          'email not verified',
          SigninResult(
            tokens: Tokens(accessToken: '', refreshToken: ''),
            user: UserOrg(),
          )
        ));
      } else if (ae.message.contains('invalid code')) {
        state = AsyncData((
          'invalid code',
          SigninResult(
            tokens: Tokens(accessToken: '', refreshToken: ''),
            user: UserOrg(),
          )
        ));
      }
    } catch (e) {
      if (kDebugMode) print('signinController.signin error: $e');
      rethrow;
    }
  }
}
