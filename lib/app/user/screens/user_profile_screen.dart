// import 'dart:html' as html;
import 'dart:js_interop_unsafe';
import 'dart:js_interop';
import 'package:web/web.dart' as web;

import 'package:boardshare/app/user/controllers/signin_controller.dart';
import 'package:boardshare/app/user/screens/ui_components/user_content_title.dart';
import 'package:boardshare/packages/core/sizes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../packages/ui_components/footer.dart';

const _gMaxWidth = 600.0;
final _formKey = GlobalKey<FormState>();
// String _email = '';
// String _password = '';
// String _name = '';
// String _code = '';

class UserProfileScreen extends HookConsumerWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signinCtl = ref.watch(signinControllerProvider);
    // final emailDuplicated = useState(false);
    // final agreed = useState(false);
    // final showNext = useState(false);
    // final uId = useState(0);
    // final invalidCode = useState(false);
    // final isValidating = useState(false);
    // final isSending = useState(false);
    // final signedInMsg = useState('');

    final emailFormReadOnly = useState(true);

    final emailController = useTextEditingController();
    final nameController = useTextEditingController();
    final introController = useTextEditingController();
    final zipCodeController = useTextEditingController();
    final roadAddressController = useTextEditingController();
    final detailAddressController = useTextEditingController();

    useEffect(() {
      signinCtl.when(
        data: (data) {
          // signedInMsg.value = 'SUCCESS';
          emailController.text = data.$2.user.user?.email ?? '';
          nameController.text = data.$2.user.user?.displayName ?? '';
          introController.text = data.$2.user.user?.notes ?? '';
          zipCodeController.text = data.$2.user.user?.zipCode ?? '';
          roadAddressController.text = data.$2.user.user?.address1 ?? '';
          detailAddressController.text = data.$2.user.user?.address2 ?? '';
        },
        error: (err, stack) {
          // signedInMsg.value = '$err';
          if (kDebugMode) print(err);
        },
        loading: () {},
      );

      return null;
    }, [signinCtl]);

    // useEffect(() {
    //   // Future.microtask(
    //   //   () => FocusScope.of(context).requestFocus(emailFocusNode),
    //   // );
    //   return () {
    //     // emailFocusNode.dispose();
    //     // passwordFocusNode.dispose();
    //     // nameFocusNode.dispose();
    //     // codeFocusNode.dispose();
    //   };
    // }, []);

    useEffect(() {
      final listener = web.window.onMessage.listen((web.MessageEvent event) {
        // event is now web.MessageEvent
        final JSAny? data = event.data; // event.data is JSAny?

        // Type checking data from JavaScript requires care.
        // If you expect a map-like structure (JS Object), you can try to convert/cast it.
        // For simple cases, you might be able to use 'instanceof' if you know the exact JS type.
        // Or, more robustly, use JS interop helpers if the structure is complex.

        // Example: If data is expected to be a simple JS Object that can be treated like a Map
        if (data != null && data.isA<JSObject>()) {
          final jsObject = data as JSObject;
          // Use jsObject.getProperty<JSString>('property_name'.toJS).toDart to get string properties
          final zonecode = jsObject.getProperty('zonecode'.toJS);
          final roadAddress = jsObject.getProperty('roadAddress'.toJS);

          if (zonecode != null && zonecode.isA<JSString>()) {
            zipCodeController.text = (zonecode as JSString).toDart;
          } else {
            zipCodeController.text = ''; // Or handle missing/wrong type
          }

          if (roadAddress != null && roadAddress.isA<JSString>()) {
            roadAddressController.text = (roadAddress as JSString).toDart;
          } else {
            roadAddressController.text = ''; // Or handle missing/wrong type
          }
        }
      });

      return () => listener.cancel();
      // final listener = html.window.onMessage.listen((event) {
      //   final data = event.data;
      //   if (data is Map) {
      //     zipCodeController.text = data['zonecode'] ?? '';
      //     roadAddressController.text = data['roadAddress'] ?? '';
      //   }
      // });
      //
      // 클린업 함수 (컴포넌트 dispose 시 구독 해제)
      // return () => listener.cancel();
    }, const []);

    void openAddressSearchPopup() {
      // 새 창으로 address_search.html 열기
      web.window.open(
        '/address_search.html', // URL
        '주소 검색', // target (use '_blank' for a new window/tab, or a specific name)
        'width=500,height=600,scrollbars=yes', // features
      );
      // html.window.open(
      //   '/address_search.html',
      //   '주소 검색',
      //   'width=500,height=600,scrollbars=yes',
      // );
    }

    // handle submit
    // Future<void> handleSubmit() async {
    //   // set temp state true
    //   isValidating.value = true;
    //   // clear email duplication warning
    //   emailDuplicated.value = false;
    //   // clear email verification error warning
    //   invalidCode.value = false;
    //
    //   // validate input values and check if term is agreed
    //   if (!_formKey.currentState!.validate() || !agreed.value) {
    //     if (kDebugMode) {
    //       print('isValidating: ${isValidating.value}, agreed: ${agreed.value}');
    //     }
    //     return;
    //   }
    //
    //   try {
    //     // prepare sending
    //     isSending.value = true;
    //     // save input values to the temp values which will be sent to the service method
    //     _formKey.currentState!.save();
    //
    //     // sign up
    //     if (!showNext.value) {
    //       int userId;
    //       String code;
    //       try {
    //         (userId, code) = await ref.read(userServicesProvider).signUp(
    //           email: emailController.text,
    //           password: passwordController.text,
    //           displayName: nameController.text,
    //         );
    //
    //         // snack bar notification
    //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    //           content: Text('인증코드가 전송되었습니다. 메일함을 확인하세요. [$code]'),
    //         ));
    //
    //         uId.value = userId;
    //         showNext.value = true;
    //       } on ApiException catch (e) {
    //         if (e.message.contains('duplicate key')) {
    //           emailDuplicated.value = true;
    //           return;
    //         }
    //       }
    //     }

    //     // verify the code
    //     else {
    //       final result = await ref.read(userServicesProvider).verifySignUpCode(
    //         userId: uId.value,
    //         orgId: 1,
    //         code: codeController.text,
    //       );
    //
    //       if (result == 'invalid code') {
    //         invalidCode.value = true;
    //         return;
    //       }
    //
    //       // sign in
    //       await ref.read(signinControllerProvider.notifier).signIn(
    //         emailController.text,
    //         passwordController.text,
    //       );
    //
    //       if (signedInMsg.value == 'SUCCESS') {
    //         context.go('/');
    //       }
    //     }
    //   } finally {
    //     // clear all the temporary state
    //     isValidating.value = false;
    //     isSending.value = false;
    //   }
    // }

    return Container(
      color: Colors.grey[200],
      child: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: _gMaxWidth),
                  padding: EdgeInsets.symmetric(horizontal: kSpace),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UserContentTitle(
                        title: '내 정보',
                        notes: '나의 이메일, 이름, 주소를 확인하세요. 변경도 가능해요.',
                        horizontalPadding: 0.0,
                      ),
                      // SizedBox(height: kESpace),
                      // Text(
                      //   '내 정보',
                      //   style: TextStyle(
                      //     fontSize: 28,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                      SizedBox(height: kESpace),

                      // field #1 email
                      Text(
                        '이메일(Email)',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Stack(
                        children: [
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: emailController,
                            // focusNode: emailFocusNode,
                            readOnly: emailFormReadOnly.value,
                            decoration: emailFormReadOnly.value
                                ? _baseInputDecoration.copyWith(
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  )
                                : _baseInputDecoration,
                            // decoration: InputDecoration(hintText: 'email@domain.com'),
                            // enabled: !showNext.value,
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
                            // onFieldSubmitted: (value) {
                            //   FocusScope.of(context).requestFocus(nameFocusNode);
                            // },
                          ),
                          Positioned(
                            right: kDMargin,
                            child: IconButton(
                              onPressed: () {
                                final previousValue = emailFormReadOnly.value;
                                emailFormReadOnly.value = !previousValue;
                                if (emailFormReadOnly.value) {
                                  signinCtl.whenData(
                                    (d) => emailController.text =
                                        d.$2.user.user?.email ?? '',
                                  );
                                }
                              },
                              icon: Icon(
                                emailFormReadOnly.value
                                    ? Icons.edit_outlined
                                    : Icons.cancel_outlined,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: kESpace),

                      // field #2 display name
                      Text('이름', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: nameController,
                        // focusNode: nameFocusNode,
                        decoration: _baseInputDecoration,
                        // decoration: InputDecoration(
                        //   hintText: '다른 사용자들이 볼 수 있는 이름 입력해 주세요.',
                        // ),
                        // enabled: !showNext.value,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '이름을 입력하세요.';
                          } else if (value.length < 2) {
                            return '적어도 2자 이상의 이름이어야 합니다.';
                          }
                          return null;
                        },
                        onFieldSubmitted: (value) {
                          if (kDebugMode) print(value);
                        },
                      ),
                      SizedBox(height: kESpace),

                      // field #3 self-introduction
                      Text(
                        '자기 소개',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextFormField(
                        maxLines: 5,
                        controller: introController,
                        decoration: _baseInputDecoration.copyWith(
                          hintText: '간략한 소개 부탁드려요.',
                        ),
                      ),
                      SizedBox(height: kESpace * 2),

                      // field #4 address
                      Text('주소', style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: kDSpace),
                      Wrap(
                        children: [
                          Container(
                            height: kEEFHeight,
                            padding: const EdgeInsets.symmetric(
                              horizontal: kDSpace,
                            ),
                            child: TextFormField(
                              controller: zipCodeController,
                              readOnly: true,
                              onTap: openAddressSearchPopup,
                              decoration: _baseInputDecoration.copyWith(
                                hintText: '우편번호',
                              ),
                            ),
                          ),
                          Container(
                            height: kEEFHeight,
                            padding: const EdgeInsets.symmetric(
                              horizontal: kDSpace,
                            ),
                            child: TextFormField(
                              controller: roadAddressController,
                              readOnly: true,
                              onTap: openAddressSearchPopup,
                              decoration: _baseInputDecoration.copyWith(
                                hintText: '도로명 주소',
                              ),
                            ),
                          ),
                          Container(
                            height: kEEFHeight,
                            padding: const EdgeInsets.symmetric(
                              horizontal: kDSpace,
                            ),
                            child: TextFormField(
                              controller: detailAddressController,
                              decoration: _baseInputDecoration.copyWith(
                                hintText: '상세 주소',
                              ),
                            ),
                          ),
                          // Container(
                          //   width: kFWidth,
                          //   height: kEEFHeight,
                          //   padding: const EdgeInsets.symmetric(
                          //     horizontal: kDSpace,
                          //   ),
                          //   child: DropdownButtonFormField<String>(
                          //     value: null,
                          //     items:
                          //         ['한국', '미국'].map((country) {
                          //           return DropdownMenuItem(
                          //             value: country,
                          //             child: Text(country),
                          //           );
                          //         }).toList(),
                          //     onChanged: (val) {},
                          //     decoration: _baseInputDecoration.copyWith(
                          //       hintText: '국가',
                          //     ),
                          //   ),
                          // ),
                          // Container(
                          //   width: kFWidth,
                          //   height: kEEFHeight,
                          //   padding: const EdgeInsets.symmetric(
                          //     horizontal: kDSpace,
                          //   ),
                          //   child: Theme(
                          //     data: Theme.of(context).copyWith(
                          //       canvasColor: Colors.white, // 드롭다운 메뉴 배경색 지정
                          //     ),
                          //     child: DropdownButtonFormField<String>(
                          //       value: null,
                          //       items:
                          //           [
                          //             '서울',
                          //             '부산',
                          //             '대구',
                          //             '인천',
                          //             '광주',
                          //             '대전',
                          //             '울산',
                          //             '세종',
                          //             '경기',
                          //             '강원',
                          //             '충청남도',
                          //             '충청북도',
                          //             '',
                          //           ].map((country) {
                          //             return DropdownMenuItem(
                          //               value: country,
                          //               child: Text(country),
                          //             );
                          //           }).toList(),
                          //       onChanged: (val) {},
                          //       decoration: _baseInputDecoration.copyWith(
                          //         hintText: '시ּ 도',
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          // Container(
                          //   width: kFWidth,
                          //   height: kEEFHeight,
                          //   padding: const EdgeInsets.symmetric(
                          //     horizontal: kDSpace,
                          //   ),
                          //   child: Theme(
                          //     data: Theme.of(context).copyWith(
                          //       canvasColor: Colors.white, // 드롭다운 메뉴 배경색 지정
                          //     ),
                          //     child: DropdownButtonFormField<String>(
                          //       value: null,
                          //       items:
                          //           ['강남구', '성동구', '성남시', '양평군'].map((country) {
                          //             return DropdownMenuItem(
                          //               value: country,
                          //               child: Text(country),
                          //             );
                          //           }).toList(),
                          //       onChanged: (val) {},
                          //       decoration: _baseInputDecoration.copyWith(
                          //         hintText: '시ּ 군 구',
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          // Container(
                          //   width: kFWidth,
                          //   height: kEEFHeight,
                          //   padding: const EdgeInsets.symmetric(
                          //     horizontal: kDSpace,
                          //   ),
                          //   child: TextFormField(
                          //     decoration: _baseInputDecoration.copyWith(
                          //       hintText: '주소1',
                          //     ),
                          //   ),
                          // ),
                          // Container(
                          //   width: kFWidth,
                          //   height: kEEFHeight,
                          //   padding: const EdgeInsets.symmetric(
                          //     horizontal: kDSpace,
                          //   ),
                          //   child: TextFormField(
                          //     decoration: _baseInputDecoration.copyWith(
                          //       hintText: '주소2',
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      SizedBox(height: kESpace * 2),

                      Center(
                        child: SizedBox(
                          width: double.infinity,
                          height: kEFHeight,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black87,
                            ),
                            // backgroundColor: showNext.value
                            //     ? Color(0xFF007AFF)
                            //     : Colors.black),
                            // onPressed: isSending.value ? () {} : handleSubmit,
                            onPressed: () {},
                            child: Text('변경'),
                            // child: isSending.value
                            //     ? const CircularProgressIndicator(
                            //   color: Colors.white,
                            // )
                            //     : showNext.value
                            //     ? Text('등록')
                            //     : Text('다음'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: kESpace * 2),
                // Footer
                DFooter(dark: false),
              ],
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

final _baseInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.grey.shade100,
  hintStyle: TextStyle(color: Colors.grey),
  border: OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(2),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF007AFF)),
  ),
  contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
);
