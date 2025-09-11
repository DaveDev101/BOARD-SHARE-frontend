import 'package:boardshare/app/user/controllers/signin_controller.dart';
import 'package:boardshare/packages/core/sizes.dart';
import 'package:boardshare/packages/ui_components/buttons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final _formKey = GlobalKey<FormState>();

// String _email = '';
// String _password = '';
// String _code = '';

class Signin extends HookConsumerWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSending = useState(false);
    final signedInMsg = useState('');
    final forgottenPassword = useState(false);
    final notVerifiedUser = useState(false);
    final invalidCode = useState(false);

    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final codeController = useTextEditingController();

    final emailFocusNode = useFocusNode();
    final passwordFocusNode = useFocusNode();
    final codeFocusNode = useFocusNode();

    // final signinCtl = ref.watch(signinControllerProvider);
    ref.listen(signinControllerProvider, (previous, signinCtl) {
      // if (kDebugMode) print(signinCtl.runtimeType);
      // if (kDebugMode) print(signinCtl);

      signinCtl.when(
        data: (signinResult) {
          isSending.value = false;
          if (signinResult.$1.isEmpty) {
            signedInMsg.value = 'SUCCESS';
            // context.go('/');
            return;
          } else if (signinResult.$1.contains('invalid credentials')) {
            if (kDebugMode) {
              print('=====> invalid credentials');
            }
            signedInMsg.value = 'invalid credentials';
          } else if (signinResult.$1.contains('email not verified')) {
            if (kDebugMode) {
              print('=====> email not verified');
            }
            notVerifiedUser.value = true;
            signedInMsg.value = 'email not verified';
          } else if (signinResult.$1.contains('invalid code')) {
            invalidCode.value = true;
            signedInMsg.value = 'invalid verification code';
          }
        },
        error: (err, stack) {
          signedInMsg.value = 'ERROR:::$err';
          isSending.value = false;
          if (kDebugMode) {
            print('signinResult ERROR ===>');
            print(err);
          }
        },
        loading: () {
          if (kDebugMode) {
            print('');
            print('LOADING --->');
            print('');
          }

          signedInMsg.value = '...LOADING...';
          isSending.value = true;
        },
      );
    });

    useEffect(() {
      Future.microtask(
        () => context.mounted
            ? FocusScope.of(context).requestFocus(emailFocusNode)
            : null,
      );
      return () {
        // emailFocusNode.dispose();
        // passwordFocusNode.dispose();
        // codeFocusNode.dispose();
      };
    }, []);

    // submit data
    Future<void> handleSubmit() async {
      if (!_formKey.currentState!.validate()) {
        return;
      }

      // prepare data
      isSending.value = true;
      _formKey.currentState!.save();

      if (kDebugMode) {
        print('');
        print('handleSubmit --->');
        print('');
      }

      try {
        // sign in with email & password
        if (!notVerifiedUser.value) {
          if (kDebugMode) {
            print('');
            print('!notVerifiedUser --->');
            print('');
          }

          await ref
              .read(signinControllerProvider.notifier)
              .signIn(emailController.text, passwordController.text);
        }
        // verify first and then sign -- almost simultaneously
        else {
          if (kDebugMode) {
            print('');
            print('notVerifiedUser --->');
            print('');
          }

          await ref
              .read(signinControllerProvider.notifier)
              .verifyAndSignIn(
                emailController.text,
                passwordController.text,
                codeController.text,
              );
        }
      } catch (e) {
        isSending.value = false;
        if (kDebugMode) {
          print('');
          print('handleSubmit catch');
          print(e);
          print('');
        }
      }
    }

    // useEffect(() {
    //   signinCtl.when(data: (signinResult) {
    //     if (kDebugMode) {
    //       print('signinResult OK!!! ===>');
    //       print(signinResult.$1);
    //       print(signinResult.$2);
    //     }
    //
    //     isSending.value = false;
    //     if (signinResult.$1.isEmpty) {
    //       signedInMsg.value = 'SUCCESS';
    //       if (kDebugMode) {
    //         print(signedInMsg.value);
    //       }
    //     } else if (signinResult.$1.contains('invalid credentials')) {
    //       if (kDebugMode) {
    //         print('=====> email not verified');
    //       }
    //       signedInMsg.value = 'invalid credentials';
    //     } else if (signinResult.$1.contains('email not verified')) {
    //       if (kDebugMode) {
    //         print('=====> email not verified');
    //       }
    //       notVerifiedUser.value = true;
    //       signedInMsg.value = 'email not verified';
    //     } else if (signinResult.$1.contains('invalid code')) {
    //       invalidCode.value = true;
    //       signedInMsg.value = 'invalid verification code';
    //     }
    //   }, error: (err, stack) {
    //     signedInMsg.value = 'ERROR:::$err';
    //     isSending.value = false;
    //     if (kDebugMode) {
    //       print('signinResult ERROR ===>');
    //       print(err);
    //     }
    //   }, loading: () {
    //     signedInMsg.value = '...LOADING...';
    //     isSending.value = true;
    //   });
    //
    //   return null;
    //
    //   // return () {
    //   //   if (signedInMsg.value == 'SUCCESS') context.go('/');
    //   // };
    // }, [signinCtl]);

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
                      '로그인',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: kSpace),
                    if (forgottenPassword.value)
                      Text(
                        '비밀번호 초기화 안내 메일이 발송되었습니다.\n메일함을 확인하세요!',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                        ),
                      ),
                    if (forgottenPassword.value) SizedBox(height: kESpace),
                    Row(
                      children: [
                        Text(
                          '아직 회원이 아니세요?',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: kSpace),
                        DButton(
                          title: '회원 가입',
                          dark: false,
                          func: () {
                            context.go('/sign-up');
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: kESpace),

                    // hidden message for login failure
                    (signedInMsg.value == 'invalid credentials')
                        ? Text(
                            '로그인 실패! 이메일, 비밀 번호를 확인하세요.',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFBA1A1A),
                            ),
                          )
                        : SizedBox(height: kSpace),
                    SizedBox(height: kESpace),

                    // field #1 email
                    Text(
                      '이메일(Email)',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: emailController,
                      focusNode: emailFocusNode,
                      decoration: InputDecoration(hintText: 'email@domain.com'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '이메일 주소를 입력하세요.';
                        } else if (!RegExp(
                          r'^[^@]+@[^@]+\.[^@]+',
                        ).hasMatch(value)) {
                          return '이메일 주소가 잘못되었습니다!';
                        }
                        return null;
                      },
                      // onSaved: (value) {
                      //   _email = value ?? '';
                      // },
                      onFieldSubmitted: (value) {
                        FocusScope.of(context).requestFocus(
                          passwordFocusNode,
                        ); // focus to the password field
                      },
                    ),
                    SizedBox(height: kESpace),

                    // field #2 password
                    Text('비밀번호', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: passwordController,
                      focusNode: passwordFocusNode,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: '8자 이상, 대문자와 숫자 반드시 포함',
                      ),
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
                      // onSaved: (value) {
                      //   _password = value ?? '';
                      // },
                      onFieldSubmitted: (value) => handleSubmit(),
                    ),
                    SizedBox(height: kESpace * 2),

                    // field # 3(hidden) verification code
                    if (notVerifiedUser.value)
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
                    if (notVerifiedUser.value)
                      Text(
                        '인증 코드',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF007AFF),
                        ),
                      ),
                    if (notVerifiedUser.value)
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: codeController,
                        focusNode: codeFocusNode,
                        decoration: InputDecoration(
                          hintText: '이메일로 전송받은 인증 코드를 입력하세요.',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ), // 비활성 상태의 밑줄 색상
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
                        // onSaved: (value) {
                        //   _code = value ?? '';
                        // },
                        onFieldSubmitted: (value) => handleSubmit(),
                      ),
                    if (notVerifiedUser.value) SizedBox(height: kESpace * 3),

                    // login button
                    SizedBox(height: kESpace),
                    Center(
                      child: SizedBox(
                        width: double.infinity,
                        height: kFHeight,
                        child: ElevatedButton(
                          onPressed: isSending.value ? () {} : handleSubmit,
                          child: isSending.value
                              ? const CircularProgressIndicator(
                                  color: Colors.white,
                                )
                              : Text('로그인'),
                        ),
                      ),
                    ),

                    // Password recovery
                    SizedBox(height: kESpace * 2),
                    Row(
                      children: [
                        Text(
                          '비밀번호가 기억나지 않으세요?',
                          style: TextStyle(
                            // fontFamily: 'f-krn',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: kSpace),
                        DButton(
                          title: '비밀번호 초기화',
                          dark: false,
                          func: () {
                            _forgottenPasswordBuilder(context).then((v) {
                              if (kDebugMode) print(v);

                              if (v != null && v.isNotEmpty) {
                                forgottenPassword.value = true;
                              }
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: kESpace),
                    // Center(child: Text('or')),
                    // SizedBox(height: 8),
                    // ElevatedButton.icon(
                    //   icon: Icon(Icons.login),
                    //   label: Text('Sign up with Google'),
                    //   onPressed: () {},
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: Colors.white,
                    //     foregroundColor: Colors.black,
                    //   ),
                    // ),
                    // SizedBox(height: 8),
                    // ElevatedButton(
                    //   onPressed: () {},
                    //   child: Text('Sign up with Facebook'),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // SnackBar _buildVerificationSnackBar(String? name) {
  //   return SnackBar(
  //     content:
  //         (name == null) ? Text('익명으로 로그인 되었습니다.') : Text('$name 회원님, 환영합니다!'),
  //   );
  // }

  Future<String?> _forgottenPasswordBuilder(BuildContext context) {
    final passwordFormKey = GlobalKey<FormState>();
    final controller = TextEditingController();
    String returnValue = '';

    return showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Text('비밀번호 초기화'),
          content: SizedBox(
            height: 150.0,
            child: Form(
              key: passwordFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    '로그인 ID로 사용되는 이메일(Email) 주소를 입력한 후, 초기화 버튼을 누르세요.\n'
                    '비밀번호 초기화를 안내하는 이메일이 발송됩니다. 메일함을 확인하세요!',
                  ),
                  const SizedBox(height: kESpace),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controller,
                    decoration: InputDecoration(hintText: 'email@domain.com'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '이메일 주소를 입력하세요.';
                      } else if (!RegExp(
                        r'^[^@]+@[^@]+\.[^@]+',
                      ).hasMatch(value)) {
                        return '이메일 주소가 잘못되었습니다!';
                      }
                      return null;
                    },
                    // onFieldSubmitted: (value) {},
                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('취소'),
              onPressed: () {
                Navigator.of(context).pop('');
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('초기화'),
              onPressed: () {
                if (passwordFormKey.currentState!.validate()) {
                  returnValue = controller.text;
                  Navigator.of(context).pop(returnValue);
                }
              },
            ),
          ],
        );
      },
    );
  }
}
