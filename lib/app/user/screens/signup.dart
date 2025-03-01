import 'package:boardshare/app/user/controllers/signin_controller.dart';
import 'package:boardshare/app/user/services/user_services.dart';
import 'package:boardshare/packages/core/sizes.dart';
import 'package:boardshare/packages/ui_components/buttons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../packages/network/api_exception.dart';

final _formKey = GlobalKey<FormState>();
String _email = '';
String _password = '';
String _name = '';
String _code = '';

class Signup extends HookConsumerWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signinCtl = ref.watch(signinControllerProvider);

    final emailDuplicated = useState(false);
    final agreed = useState(false);
    final showNext = useState(false);
    final uId = useState(0);
    final invalidCode = useState(false);

    final isValidating = useState(false);
    final isSending = useState(false);

    final signedInMsg = useState('');

    useEffect(() {
      signinCtl.when(
        data: (data) {
          print('=> signed in: $data');
          signedInMsg.value = 'SUCCESS';
        },
        error: (err, stack) {
          print('=> error: $err');
          signedInMsg.value = '$err';
        },
        loading: () => print('...loading...'),
      );

      return () {};
    }, [signinCtl]);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
              child: Container(
                constraints: BoxConstraints(maxWidth: 400.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: kESpace * 4),
                    Text(
                      '회원 가입',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: kSpace),
                    Row(
                      children: [
                        Text('이미 가입 하셨나요?',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(width: kSpace),
                        DButton(
                            title: '로그인',
                            dark: false,
                            func: () {
                              context.go('/sign-in');
                            }),
                      ],
                    ),
                    SizedBox(height: kESpace),

                    // hidden message for duplicated email input
                    emailDuplicated.value
                        ? Text(
                            '이미 회원으로 가입되어 있는 이메일입니다.',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFBA1A1A),
                            ),
                          )
                        : SizedBox(height: kSpace),
                    SizedBox(height: kESpace),

                    // field #1 email
                    Text('이메일(Email)',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        hintText: 'email@domain.com',
                      ),
                      enabled: !showNext.value,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '이메일 주소를 입력하세요.';
                        } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                            .hasMatch(value)) {
                          return '이메일 주소가 잘못되었습니다!';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _email = value ?? '';
                      },
                    ),
                    SizedBox(height: kESpace),

                    // field #2 password
                    Text('비밀 번호',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: '8자 이상, 대문자, 숫자 반드시 포함',
                        ),
                        enabled: !showNext.value,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '비밀 번호를 입력하세요.';
                          } else if (value.length < 8) {
                            return '비밃 번호는 8자 이상 입력해 주세요.';
                          } else if (!RegExp(r'[A-Z]').hasMatch(value)) {
                            return '1개 이상의 대문자를 포함해야 합니다.';
                          } else if (!RegExp(r'[0-9]').hasMatch(value)) {
                            return '1개 이상의 숫자를 포함해야 합니다.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _password = value ?? '';
                        }),
                    SizedBox(height: kESpace),

                    // field #3 display name
                    Text('이름', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          hintText: '다른 사용자들이 볼 수 있는 이름 입력해 주세요.',
                        ),
                        enabled: !showNext.value,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '이름을 입력하세요.';
                          } else if (value.length < 2) {
                            return '적어도 2자 이상의 이름이어야 합니다.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _name = value ?? '';
                        }),
                    SizedBox(height: kESpace * 2),

                    // field #4 agree to terms of service
                    Row(
                      children: [
                        Checkbox(
                            value: agreed.value,
                            onChanged: (value) {
                              agreed.value = value ?? !agreed.value;
                            }),
                        Text('이용 약관에 동의합니다.'),
                        SizedBox(width: kSpace),
                        DButton(title: '이용 약관 보기', dark: false, func: () {}),
                      ],
                    ),
                    SizedBox(height: kDSpace),
                    (isValidating.value && !agreed.value)
                        ? Text(
                            '이용 약관에 동의하셔야 회원 가입이 가능합니다.',
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Color(0xFFBA1A1A),
                            ),
                          )
                        : SizedBox(height: kSpace),
                    SizedBox(height: kESpace * 2),

                    // field #5 (hidden) verification code
                    if (showNext.value)
                      invalidCode.value
                          ? Text(
                              '코드가 맞지 않습니다.',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFBA1A1A),
                              ),
                            )
                          : SizedBox(height: kSpace),
                    SizedBox(height: kESpace),
                    if (showNext.value)
                      Text('인증 코드',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF007AFF))),
                    if (showNext.value)
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          hintText: '이메일로 전송받은 인증 코드를 입력하세요.',
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey), // 비활성 상태의 밑줄 색상
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '인증 코드를 입력하세요.';
                          } else if (value.length != 6) {
                            return '인증 코드 6자리를 입력하세요.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _code = value ?? '';
                        },
                      ),
                    if (showNext.value) SizedBox(height: kESpace * 3),

                    // save button
                    Center(
                      child: SizedBox(
                        width: double.infinity,
                        height: kFHeight,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: showNext.value
                                  ? Color(0xFF007AFF)
                                  : Colors.black),
                          onPressed: isSending.value
                              ? () {}
                              : () async {
                                  // set temp state true
                                  isValidating.value = true;
                                  // clear email duplication warning
                                  emailDuplicated.value = false;
                                  // clear email verification error warning
                                  invalidCode.value = false;

                                  // validate input values and check if term is agreed
                                  if (!_formKey.currentState!.validate() ||
                                      !agreed.value) {
                                    if (kDebugMode) {
                                      print(
                                          'isValidating: ${isValidating.value}, agreed: ${agreed.value}');
                                    }
                                    return;
                                  }

                                  try {
                                    // prepare sending
                                    isSending.value = true;
                                    // save input values to the temp values which will be sent to the service method
                                    _formKey.currentState!.save();

                                    // sign up
                                    if (!showNext.value) {
                                      int userId;
                                      String code;
                                      try {
                                        (userId, code) = await ref
                                            .read(userServicesProvider)
                                            .signUp(
                                              email: _email,
                                              password: _password,
                                              displayName: _name,
                                            );

                                        // snack bar notification
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content: Text(
                                              '인증코드가 전송되었습니다. 메일함을 확인하세요. [$code]'),
                                        ));

                                        if (kDebugMode) {
                                          print('=====> code: $code');
                                        }

                                        uId.value = userId;
                                        showNext.value = true;
                                      } on ApiException catch (e) {
                                        if (e.message
                                            .contains('duplicate key')) {
                                          emailDuplicated.value = true;
                                          return;
                                        }
                                      }
                                    }

                                    // verify the code
                                    else {
                                      final result = await ref
                                          .read(userServicesProvider)
                                          .verifySignUpCode(
                                            userId: uId.value,
                                            orgId: 1,
                                            code: _code,
                                          );
                                      if (kDebugMode) {
                                        print('verification result: $result');
                                      }
                                      if (result == 'invalid code') {
                                        if (kDebugMode) {
                                          print('!!! invalid code');
                                        }
                                        invalidCode.value = true;
                                        return;
                                      }

                                      if (kDebugMode) {
                                        print('---> verified!!! --------');
                                        print(
                                            '===> email: $_email, password: $_password, code: $_code, result: $result');
                                      }

                                      // sign in
                                      await ref
                                          .read(
                                              signinControllerProvider.notifier)
                                          .signIn(_email, _password);

                                      if (signedInMsg.value == 'SUCCESS') {
                                        context.go('/');
                                      }
                                    }
                                  } finally {
                                    // clear all the temporary state
                                    isValidating.value = false;
                                    isSending.value = false;
                                  }
                                },
                          child: isSending.value
                              ? const CircularProgressIndicator(
                                  color: Colors.white,
                                )
                              : showNext.value
                                  ? Text('등록')
                                  : Text('다음'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  //
  // SnackBar _buildVerificationSnackBar(String code) {
  //   return SnackBar(
  //     content: Text('인증 코드가 이메일로 전송되었습니다. 메일함을 확인하세요!: [$code]'),
  //   );
  // }
}
