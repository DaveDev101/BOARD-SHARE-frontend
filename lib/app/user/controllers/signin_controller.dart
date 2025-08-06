import 'dart:io';

import 'package:boardshare/app/user/models/auth_provider.dart';
import 'package:boardshare/app/user/models/org.dart';
import 'package:boardshare/app/user/models/signin_result.dart';
import 'package:boardshare/app/user/models/tokens.dart';
import 'package:boardshare/app/user/models/user.dart';
import 'package:boardshare/app/user/services/user_services.dart';
import 'package:boardshare/app_env.dart';
import 'package:boardshare/packages/data_models/account_role.dart';
import 'package:boardshare/packages/data_models/account_status.dart';
import 'package:boardshare/packages/network/api_exception.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/user_org.dart';

part 'signin_controller.g.dart';

@Riverpod(keepAlive: true)
class SigninController extends _$SigninController {
  @override
  FutureOr<(String, SigninResult)> build() async {
    if (kAppEnv == EnumAppEnv.mockup) {
      return (
        '',
        SigninResult(
          tokens: Tokens(
            accessToken:
                'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJib2FyZC1zaGFyZS5jb20iLCJleHAiOjE3NDAyMTg0NTAsImlhdCI6MTc0MDIxODE1MCwiaXNzIjoiYm9hcmQtc2hhcmUuY29tIiwibmFtZSI6ImFub3RoZXIgbmV3Iiwic3ViIjoiMTgifQ.xFPgJ7DH_YBS5XEleZmcES0zN5jpw7HMRqufrG8iRJ8',
            refreshToken:
                'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3NDAyMTg3NTAsImlhdCI6MTc0MDIxODE1MCwic3ViIjoiMTgifQ._fLMKm30rF-GatwhXufxQwrrr0ISSjLa1VrcVHLPCoc',
          ),
          user: UserOrg(
            userId: 18,
            orgId: 1,
            status: AccountStatus(accountStatusId: 1, accountStatus: 'Active'),
            role: AccountRole(roleId: 1, role: 'member'),
            avatarPath: '',
            notes: '',
            joinedAt: DateTime.parse('2025-02-21T21:45:23.93719+09:00'),
            leftAt: DateTime.parse('9999-12-31T09:00:00+09:00'),
            createdAt: DateTime.parse('2025-02-21T21:45:23.93719+09:00'),
            updatedAt: DateTime.parse('9999-12-31T09:00:00+09:00'),
            user: User(
              id: 18,
              email: 'individual005@aaa.io',
              password: '',
              displayName: 'Dave Park',
              status: AccountStatus(
                accountStatusId: 1,
                accountStatus: 'Active',
              ),
              notes: '🍉🍎안녕하세요? 반갑습니다.🚩',
              zipCode: '01234',
              address1: '서울특별시 강북구 오패산로30길 76',
              address2: '201호',
              createdAt: DateTime.parse('2025-02-21T21:45:23.93719+09:00'),
              updatedAt: DateTime.parse('9999-12-31T09:00:00+09:00'),
            ),
            org: Org(
              id: 1,
              name: '한가람언어재활센터 - 서현동지점',
              businessNo: '1234567890',
              status: AccountStatus(
                accountStatusId: 0,
                accountStatus: 'Active',
              ),
              phone: '0212345675',
              email: 'hangaram.rehab@center.com',
              notes:
                  '한가람언어재활센터 서현동지점입니다!\n발달이 늦는 아동, 자폐스펙트럼, ADHD, 난독증으로 힘들어하는 아동과 청소년을 대상으로 하는 언어재활센터입니다.\n\n언어재활사 5명, 인지치료사 2명, 작업치료사 1명이 일하고 있습니다.',
              zipCode: '01234',
              address1: '서울특별시 강북구 오패산로30길 76',
              address2: '한가람플라자빌딩 8층 802-806호',
              adminNotes: '',
              createdAt: DateTime.parse('2025-02-21T21:45:23.93719+09:00'),
              updatedAt: DateTime.parse('9999-12-31T09:00:00+09:00'),
            ),
          ),
        ),
      );
    }

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
      if (kDebugMode) {
        print('🔴🚩❓❓❓ auth.loadAuthState() error ===> $e');
      }
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
    if (kAppEnv == EnumAppEnv.mockup) {
      state = AsyncData((
        '',
        SigninResult(
          tokens: Tokens(
            accessToken:
                'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJib2FyZC1zaGFyZS5jb20iLCJleHAiOjE3NDAyMTg0NTAsImlhdCI6MTc0MDIxODE1MCwiaXNzIjoiYm9hcmQtc2hhcmUuY29tIiwibmFtZSI6ImFub3RoZXIgbmV3Iiwic3ViIjoiMTgifQ.xFPgJ7DH_YBS5XEleZmcES0zN5jpw7HMRqufrG8iRJ8',
            refreshToken:
                'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3NDAyMTg3NTAsImlhdCI6MTc0MDIxODE1MCwic3ViIjoiMTgifQ._fLMKm30rF-GatwhXufxQwrrr0ISSjLa1VrcVHLPCoc',
          ),
          user: UserOrg(
            userId: 18,
            orgId: 1,
            status: AccountStatus(accountStatusId: 1, accountStatus: 'Active'),
            role: AccountRole(roleId: 1, role: 'member'),
            avatarPath: '',
            notes: '',
            joinedAt: DateTime.parse('2025-02-21T21:45:23.93719+09:00'),
            leftAt: DateTime.parse('9999-12-31T09:00:00+09:00'),
            createdAt: DateTime.parse('2025-02-21T21:45:23.93719+09:00'),
            updatedAt: DateTime.parse('9999-12-31T09:00:00+09:00'),
            user: User(
              id: 18,
              email: 'individual005@aaa.io',
              password: '',
              displayName: 'Dave Park',
              status: AccountStatus(
                accountStatusId: 1,
                accountStatus: 'Active',
              ),
              notes: '',
              createdAt: DateTime.parse('2025-02-21T21:45:23.93719+09:00'),
              updatedAt: DateTime.parse('9999-12-31T09:00:00+09:00'),
            ),
          ),
        ),
      ));

      return;
    }

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
          ),
        ));
      }
      if (kDebugMode) {
        print('');
        print('signIn error --->');
        print(ae);
        print('');
      }
      return;
    } catch (e) {
      if (kDebugMode) print('signinController.signin error: $e');
      rethrow;
    }
  }

  Future<void> verifyAndSignIn(
    String email,
    String password,
    String code,
  ) async {
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
          ),
        ));
      } else if (ae.message.contains('invalid code')) {
        state = AsyncData((
          'invalid code',
          SigninResult(
            tokens: Tokens(accessToken: '', refreshToken: ''),
            user: UserOrg(),
          ),
        ));
      }
    } catch (e) {
      if (kDebugMode) print('signinController.signin error: $e');
      rethrow;
    }
  }

  Future<void> signOut() async {
    state = AsyncData((
      'NOT AUTHENTICATED',
      SigninResult(
        tokens: Tokens(accessToken: '', refreshToken: ''),
        user: UserOrg(),
      ),
    ));
  }
}
