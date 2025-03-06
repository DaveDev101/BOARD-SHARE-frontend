import 'dart:io';

import 'package:boardshare/app/user/models/auth_provider.dart';
import 'package:boardshare/app/user/models/signin_result.dart';
import 'package:boardshare/app/user/models/tokens.dart';
import 'package:boardshare/app/user/services/user_services.dart';
import 'package:boardshare/packages/network/api_exception.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/user_org.dart';

part 'signin_controller.g.dart';

@Riverpod(keepAlive: true)
class SigninController extends _$SigninController {
  @override
  FutureOr<(String, SigninResult)> build() async {
    try {
      final auth = await Auth().loadAuthState();

      if (auth.isAuthenticated) {
        if (kDebugMode) {
          print('🟡🍓🟢 auth: $auth');
        }
        return (
          (auth.token != null && auth.token!.isNotEmpty) ? '' : 'EMPTY TOKEN',
          SigninResult(
            tokens: Tokens(accessToken: auth.token ?? '', refreshToken: ''),
            user: auth.user ?? UserOrg(),
          ),
        );
      } else {
        return (
          'NOT AUTHENTICATED',
          SigninResult(
            tokens: Tokens(accessToken: '', refreshToken: ''),
            user: UserOrg(),
          ),
        );
      }
    } catch (e) {
      print('🔴🚩❓❓❓ auth.loadAuthState() error ===> $e');
    }

    return (
      'NOT AUTHENTICATED',
      SigninResult(
        tokens: Tokens(accessToken: '', refreshToken: ''),
        user: UserOrg(),
      ),
    );

    // final auth = ref.watch(authNotifierProvider);
    //
    // return auth.when(data: (auth) {
    //   if (auth.isAuthenticated) {
    //     if (kDebugMode) {
    //       print('🟡🍓🟢 auth: $auth');
    //     }
    //     return (
    //       (auth.token != null && auth.token!.isNotEmpty) ? '' : 'EMPTY TOKEN',
    //       SigninResult(
    //         tokens: Tokens(accessToken: auth.token ?? '', refreshToken: ''),
    //         user: auth.user ?? UserOrg(),
    //       ),
    //     );
    //   } else {
    //     return (
    //       'NOT AUTHENTICATED',
    //       SigninResult(
    //         tokens: Tokens(accessToken: '', refreshToken: ''),
    //         user: UserOrg(),
    //       ),
    //     );
    //   }
    // }, error: (err, stack) {
    //   if (kDebugMode) {
    //     print('❓❓❓ AUTH ERROR: $err');
    //   }
    //   return (
    //     'NOT AUTHENTICATED',
    //     SigninResult(
    //       tokens: Tokens(accessToken: '', refreshToken: ''),
    //       user: UserOrg(),
    //     ),
    //   );
    // }, loading: () {
    //   return (
    //     'NOT AUTHENTICATED',
    //     SigninResult(
    //       tokens: Tokens(accessToken: '', refreshToken: ''),
    //       user: UserOrg(),
    //     ),
    //   );
    // });

    // if (auth.isAuthenticated) {
    //   if (kDebugMode) {
    //     print('🟡🍓🟢 auth: $auth');
    //   }
    //   return (
    //     (auth.token != null && auth.token!.isNotEmpty) ? '' : 'EMPTY TOKEN',
    //     SigninResult(
    //       tokens: Tokens(accessToken: auth.token ?? '', refreshToken: ''),
    //       user: auth.user ?? UserOrg(),
    //     ),
    //   );
    // } else {
    //   return (
    //     'NOT AUTHENTICATED',
    //     SigninResult(
    //       tokens: Tokens(accessToken: '', refreshToken: ''),
    //       user: UserOrg(),
    //     ),
    //   );
    // }
  }

  Future<void> signIn(String email, String password) async {
    try {
      final (result, signinResult) = await ref
          .watch(userServicesProvider)
          .signIn(email: email, password: password);

      // if (result.isEmpty) {
      //   await ref.read(authNotifierProvider.notifier).saveAuthData(
      //         signinResult.tokens.accessToken,
      //         signinResult.user,
      //       );
      // } else {
      //   await ref.read(authNotifierProvider.notifier).clearData();
      // }

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

      // if (result == 'SUCCESS') {
      //   await ref.read(authNotifierProvider.notifier).saveAuthData(
      //         signinResult.tokens.accessToken,
      //         signinResult.user,
      //       );
      // } else {
      //   await ref.read(authNotifierProvider.notifier).clearData();
      // }

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

  Future<void> signOut() async {
    state = AsyncData(
      (
        'NOT AUTHENTICATED',
        SigninResult(
          tokens: Tokens(accessToken: '', refreshToken: ''),
          user: UserOrg(),
        ),
      ),
    );
  }
}
