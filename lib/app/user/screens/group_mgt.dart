// import 'dart:html' as html;
import 'dart:js_interop_unsafe';
import 'dart:js_interop';
import 'package:web/web.dart' as web;

import 'package:boardshare/app/user/controllers/signin_controller.dart';
import 'package:boardshare/app/user/models/user.dart';
import 'package:boardshare/app/user/screens/ui_components/user_content_title.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../packages/core/sizes.dart';
import '../../../packages/data_models/account_status.dart';
import '../../../packages/ui_components/footer.dart';

const _gMaxWidth = 400.0;
final _formKey = GlobalKey<FormState>();

class GroupManagementScreen extends HookConsumerWidget {
  const GroupManagementScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sWidth = MediaQuery.of(context).size.width;
    // final sHeight = MediaQuery.of(context).size.height;
    final horizontalPadding = (sWidth > kMaxWidth)
        ? (sWidth - kMaxWidth) / 2
        : kESpace * 2;

    final nameController = useTextEditingController();
    final businessNoController = useTextEditingController();
    final emailController = useTextEditingController();
    final phoneController = useTextEditingController();
    final zipCodeController = useTextEditingController();
    final roadAddressController = useTextEditingController();
    final detailAddressController = useTextEditingController();
    final introController = useTextEditingController();

    final signinCtl = ref.watch(signinControllerProvider);

    useEffect(() {
      signinCtl.when(
        data: (data) {
          // signedInMsg.value = 'SUCCESS';
          businessNoController.text = data.$2.user.org?.businessNo ?? '';
          emailController.text = data.$2.user.org?.email ?? '';
          nameController.text = data.$2.user.org?.name ?? '';
          introController.text = data.$2.user.org?.notes ?? '';
          zipCodeController.text = data.$2.user.org?.zipCode ?? '';
          roadAddressController.text = data.$2.user.org?.address1 ?? '';
          detailAddressController.text = data.$2.user.org?.address2 ?? '';
        },
        error: (err, stack) {
          // signedInMsg.value = '$err';
          if (kDebugMode) print(err);
        },
        loading: () {},
      );

      return null;
    }, [signinCtl]);

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
    }, const []);

    void openAddressSearchPopup() {
      web.window.open(
        '/address_search.html', // URL
        '주소 검색', // target (use '_blank' for a new window/tab, or a specific name)
        'width=500,height=600,scrollbars=yes', // features
      );
    }

    return Container(
      color: Colors.grey[200],
      child: Center(
        child: CustomScrollView(
          slivers: [
            // group information
            SliverToBoxAdapter(
              child: Center(
                child: Form(
                  key: _formKey,
                  child: Container(
                    // constraints: BoxConstraints(maxWidth: kMaxWidth),
                    padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UserContentTitle(
                          title: '그룹 관리',
                          notes: '내가 속한 그룹과 그룹 멤버를 확인하세요.',
                          horizontalPadding: 0.0,
                        ),
                        SizedBox(height: kESpace),

                        Text(
                          '그룹 정보',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        SizedBox(height: kESpace),

                        SizedBox(
                          width: double.infinity,
                          child: Wrap(
                            // spacing: kESpace * 4,
                            alignment: WrapAlignment.spaceBetween,
                            children: [
                              Container(
                                constraints: BoxConstraints(
                                  maxWidth: _gMaxWidth,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // field #1 group name
                                    const Text('그룹 이름'),
                                    TextFormField(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      controller: nameController,
                                      decoration: _baseInputDecoration,
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
                                    const SizedBox(height: kSpace),

                                    // field #2 group name
                                    const Text('사업자등록번호'),
                                    TextFormField(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      controller: businessNoController,
                                      keyboardType: TextInputType.number,
                                      decoration: _baseInputDecoration.copyWith(
                                        hintText: '1234567890',
                                      ),
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return '사업자등록번호를 입력하세요.';
                                        } else if (value.length != 10) {
                                          return '유효한 사업자번호가 아닙니다.';
                                        }
                                        return null;
                                      },
                                      onFieldSubmitted: (value) {
                                        if (kDebugMode) print(value);
                                      },
                                    ),
                                    const SizedBox(height: kSpace),

                                    // field #3 email
                                    const Text('이메일 주소'),
                                    TextFormField(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      controller: emailController,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: _baseInputDecoration.copyWith(
                                        hintText: 'address@group.com',
                                      ),
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
                                    SizedBox(height: kSpace),

                                    // field #4 phone
                                    const Text('전화번호'),
                                    TextFormField(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      controller: phoneController,
                                      keyboardType: TextInputType.phone,
                                      decoration: _baseInputDecoration.copyWith(
                                        hintText: '02-1234-5678',
                                      ),
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                        LengthLimitingTextInputFormatter(11),
                                        PhoneNumberInputFormatter(),
                                      ],
                                      validator: (value) {
                                        if (value == null ||
                                            value.isEmpty ||
                                            (value.startsWith('02') &&
                                                value.length != 12) ||
                                            (!value.startsWith('02') &&
                                                value.length != 13)) {
                                          return '올바른 전화번호를 입력해 주세요';
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
                                    SizedBox(height: kESpace * 2),
                                  ],
                                ),
                              ),
                              Container(
                                constraints: BoxConstraints(
                                  maxWidth: _gMaxWidth,
                                ),

                                // field #5 address
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('주소'),
                                    SizedBox(height: kDSpace),
                                    Container(
                                      height: kEEFHeight,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: kDSpace,
                                      ),
                                      child: TextFormField(
                                        controller: zipCodeController,
                                        readOnly: true,
                                        onTap: openAddressSearchPopup,
                                        decoration: _baseInputDecoration
                                            .copyWith(hintText: '우편번호'),
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
                                        decoration: _baseInputDecoration
                                            .copyWith(hintText: '도로명 주소'),
                                      ),
                                    ),
                                    Container(
                                      height: kEEFHeight,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: kDSpace,
                                      ),
                                      child: TextFormField(
                                        controller: detailAddressController,
                                        decoration: _baseInputDecoration
                                            .copyWith(hintText: '상세 주소'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // field #6 introduction
                              Container(
                                constraints: BoxConstraints(
                                  maxWidth: _gMaxWidth,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('그룹 소개'),
                                    TextFormField(
                                      maxLines: 5,
                                      controller: introController,
                                      style: TextStyle(
                                        height: 1.5, // 줄 간격 넉넉히 확보
                                        locale: Locale(
                                          'ko',
                                          'KR',
                                        ), // 한글 렌더링 환경 명시
                                      ),
                                      decoration: _baseInputDecoration.copyWith(
                                        hintText: '간략한 소개 부탁드려요.',
                                      ),
                                    ),
                                    SizedBox(height: kESpace * 2),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        Center(
                          child: SizedBox(
                            width: double.infinity,
                            height: kEFHeight,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF007AFF),
                              ),
                              // backgroundColor: showNext.value
                              //     ? Color(0xFF007AFF)
                              //     : Colors.black),
                              // onPressed: isSending.value ? () {} : handleSubmit,
                              onPressed: () {},
                              child: Text('저장'),
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

                        SizedBox(height: kESpace * 4),
                        Text(
                          '그룹 멤버 목록',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        SizedBox(height: kESpace),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: const Row(
                  children: [
                    Checkbox(value: false, onChanged: null),
                    SizedBox(width: 8),
                    Expanded(
                      flex: 3,
                      child: Text(
                        'Name',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Role',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Last activity',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                _buildUserRow(
                  context,
                  'Alex Hayes (You)',
                  'alex.hayes@hey.com',
                  'Owner',
                  Colors.blue,
                  'Recently',
                  avatar: '👨🏻',
                ),
                _buildUserRow(
                  context,
                  'Hana Al-Mansoori',
                  'hanna.al.mansoori@gmail.com',
                  'Production Manager',
                  Colors.purple,
                  '5m ago',
                  avatar: '🧕🏻',
                ),
                _buildUserRow(
                  context,
                  'Emily Johnson',
                  'emily.johnson@gmail.com',
                  'Factory Employee',
                  Colors.green,
                  '23m ago',
                  avatar: '👩🏼',
                ),
                _buildUserRow(
                  context,
                  'Benjamin Anderson',
                  'benjamin.anderson@gmail.com',
                  'Factory Employee',
                  Colors.green,
                  '2d ago',
                  avatar: '🧑🏽',
                ),
                _buildUserRow(
                  context,
                  'rayan.gosling@gmail.com',
                  '',
                  'Factory Employee',
                  Colors.grey,
                  'Invited',
                  avatar: '👤',
                  isInvited: true,
                ),
              ]),
            ),

            // group members
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              sliver: SliverList.builder(
                itemCount: _members.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey, // 선 색상
                          width: 1.0, // 선 두께
                        ),
                      ),
                    ),
                    child: Wrap(
                      direction: Axis.horizontal, // 수평 방향
                      alignment: WrapAlignment.spaceBetween,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(Icons.person_outlined, color: Colors.white),
                        SizedBox(
                          width: 120.0,
                          child: Text(
                            (_members[index]['user'] as User).displayName ?? '',
                            style: Theme.of(context).textTheme.bodyLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: kSpace),
                        SizedBox(
                          width: 240.0,
                          child: Text(
                            (_members[index]['user'] as User).email ?? '',
                            style: Theme.of(context).textTheme.bodyLarge!
                                .copyWith(fontWeight: FontWeight.w300),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: kESpace),
                        (_members[index]['role'] == '관리자')
                            ? Chip(
                                label: Text(
                                  '관리자',
                                  style: Theme.of(context).textTheme.bodySmall!
                                      .copyWith(color: Colors.white),
                                ),
                                backgroundColor: Colors.black87,
                              )
                            : Chip(
                                label: Text(
                                  '멤버',
                                  style: Theme.of(context).textTheme.bodySmall!
                                      .copyWith(color: Colors.white),
                                ),
                                side: BorderSide(color: Colors.grey.shade600),
                                backgroundColor: Colors.grey.shade600,
                              ),
                        const SizedBox(width: kSpace),
                        (_members[index]['isActive'] as bool)
                            ? Chip(
                                label: Text(
                                  '유효',
                                  style: Theme.of(context).textTheme.bodySmall!
                                      .copyWith(color: Colors.white),
                                ),
                                side: BorderSide(color: Color(0xFF007AFF)),
                                backgroundColor: Color(0xFF007AFF),
                              )
                            : Chip(
                                label: Text(
                                  '만료',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                backgroundColor: Colors.grey.shade50,
                              ),
                        const SizedBox(width: kESpace),
                        Text(
                          '${_members[index]['effective']} - ${_members[index]['expiry']}',
                          style: Theme.of(context).textTheme.bodyLarge!
                              .copyWith(fontWeight: FontWeight.w200),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(width: kESpace),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_vert_outlined),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            SliverToBoxAdapter(child: SizedBox(height: kESpace * 2)),
            // Footer
            SliverToBoxAdapter(child: DFooter(dark: false)),
          ],
        ),
      ),
    );
  }

  Widget _buildUserRow(
    BuildContext context,
    String name,
    String email,
    String role,
    Color roleColor,
    String activity, {
    String avatar = '👤',
    bool isInvited = false,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: isInvited ? Colors.grey.withValues(alpha: 0.05) : null,
        border: const Border(bottom: BorderSide(color: Colors.black12)),
      ),
      child: Row(
        children: [
          Checkbox(value: false, onChanged: (v) {}),
          const SizedBox(width: 8),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                CircleAvatar(child: Text(avatar)),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    if (email.isNotEmpty)
                      Text(
                        email,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Icon(Icons.circle, size: 10, color: roleColor),
                const SizedBox(width: 4),
                Text(role, style: TextStyle(color: roleColor)),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              activity,
              style: const TextStyle(color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}

final _baseInputDecoration = InputDecoration(
  // filled: true,
  // fillColor: Colors.grey.shade100,
  hintStyle: TextStyle(color: Colors.grey),
  border: UnderlineInputBorder(),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF007AFF)),
  ),
  contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
);

class PhoneNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final digitsOnly = newValue.text.replaceAll(RegExp(r'\D'), '');

    String formatted = digitsOnly;

    if (digitsOnly.startsWith('02')) {
      if (digitsOnly.length >= 3 && digitsOnly.length <= 6) {
        formatted = '${digitsOnly.substring(0, 2)}-${digitsOnly.substring(2)}';
      } else if (digitsOnly.length > 6) {
        formatted =
            '${digitsOnly.substring(0, 2)}-${digitsOnly.substring(2, 6)}-${digitsOnly.substring(6)}';
      }
    } else {
      if (digitsOnly.length >= 4 && digitsOnly.length <= 7) {
        formatted = '${digitsOnly.substring(0, 3)}-${digitsOnly.substring(3)}';
      } else if (digitsOnly.length > 7) {
        formatted =
            '${digitsOnly.substring(0, 3)}-${digitsOnly.substring(3, 7)}-${digitsOnly.substring(7)}';
      }
    }

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}

final _members = <Map<String, dynamic>>[
  {
    'isActive': true,
    'role': '관리자',
    'user': User(
      id: 18,
      email: 'admin123@aaa.io',
      password: '',
      displayName: '어드민',
      status: AccountStatus(accountStatusId: 1, accountStatus: 'Active'),
      notes: '🍉🍎안녕하세요? 반갑습니다.🚩',
      zipCode: '01234',
      address1: '서울특별시 강북구 오패산로30길 76',
      address2: '201호',
      createdAt: DateTime.parse('2025-02-21T21:45:23.93719+09:00'),
      updatedAt: DateTime.parse('9999-12-31T09:00:00+09:00'),
    ),
    'effective': DateTime.parse('2025-02-21T21:45:23.93719+09:00'),
    'expiry': DateTime.parse('2026-02-21T21:45:23.93719+09:00'),
  },
  {
    'isActive': true,
    'role': '회원',
    'user': User(
      id: 18,
      email: 'individual005@aaa.io',
      password: '',
      displayName: '김선생',
      status: AccountStatus(accountStatusId: 1, accountStatus: 'Active'),
      notes: '🍉🍎안녕하세요? 반갑습니다.🚩',
      zipCode: '01234',
      address1: '서울특별시 강북구 오패산로30길 76',
      address2: '201호',
      createdAt: DateTime.parse('2025-02-21T21:45:23.93719+09:00'),
      updatedAt: DateTime.parse('9999-12-31T09:00:00+09:00'),
    ),
    'effective': DateTime.parse('2025-02-21T21:45:23.93719+09:00'),
    'expiry': DateTime.parse('2026-02-21T21:45:23.93719+09:00'),
  },
  {
    'isActive': true,
    'role': '회원',
    'user': User(
      id: 18,
      email: 'individual005@aaa.io',
      password: '',
      displayName: '김선생',
      status: AccountStatus(accountStatusId: 1, accountStatus: 'Active'),
      notes: '🍉🍎안녕하세요? 반갑습니다.🚩',
      zipCode: '01234',
      address1: '서울특별시 강북구 오패산로30길 76',
      address2: '201호',
      createdAt: DateTime.parse('2025-02-21T21:45:23.93719+09:00'),
      updatedAt: DateTime.parse('9999-12-31T09:00:00+09:00'),
    ),
    'effective': DateTime.parse('2025-02-21T21:45:23.93719+09:00'),
    'expiry': DateTime.parse('2026-02-21T21:45:23.93719+09:00'),
  },
  {
    'isActive': true,
    'role': '회원',
    'user': User(
      id: 18,
      email: 'individual005@aaa.io',
      password: '',
      displayName: '김선생',
      status: AccountStatus(accountStatusId: 1, accountStatus: 'Active'),
      notes: '🍉🍎안녕하세요? 반갑습니다.🚩',
      zipCode: '01234',
      address1: '서울특별시 강북구 오패산로30길 76',
      address2: '201호',
      createdAt: DateTime.parse('2025-02-21T21:45:23.93719+09:00'),
      updatedAt: DateTime.parse('9999-12-31T09:00:00+09:00'),
    ),
    'effective': DateTime.parse('2025-02-21T21:45:23.93719+09:00'),
    'expiry': DateTime.parse('2026-02-21T21:45:23.93719+09:00'),
  },
  {
    'isActive': true,
    'role': '회원',
    'user': User(
      id: 18,
      email: 'individual005@aaa.io',
      password: '',
      displayName: '김선생',
      status: AccountStatus(accountStatusId: 1, accountStatus: 'Active'),
      notes: '🍉🍎안녕하세요? 반갑습니다.🚩',
      zipCode: '01234',
      address1: '서울특별시 강북구 오패산로30길 76',
      address2: '201호',
      createdAt: DateTime.parse('2025-02-21T21:45:23.93719+09:00'),
      updatedAt: DateTime.parse('9999-12-31T09:00:00+09:00'),
    ),
    'effective': DateTime.parse('2025-02-21T21:45:23.93719+09:00'),
    'expiry': DateTime.parse('2026-02-21T21:45:23.93719+09:00'),
  },
  {
    'isActive': true,
    'role': '회원',
    'user': User(
      id: 18,
      email: 'individual005@aaa.io',
      password: '',
      displayName: '김선생',
      status: AccountStatus(accountStatusId: 1, accountStatus: 'Active'),
      notes: '🍉🍎안녕하세요? 반갑습니다.🚩',
      zipCode: '01234',
      address1: '서울특별시 강북구 오패산로30길 76',
      address2: '201호',
      createdAt: DateTime.parse('2025-02-21T21:45:23.93719+09:00'),
      updatedAt: DateTime.parse('9999-12-31T09:00:00+09:00'),
    ),
    'effective': DateTime.parse('2025-02-21T21:45:23.93719+09:00'),
    'expiry': DateTime.parse('2026-02-21T21:45:23.93719+09:00'),
  },
  {
    'isActive': false,
    'role': '회원',
    'user': User(
      id: 18,
      email: 'individual005@aaa.io',
      password: '',
      displayName: '만료된',
      status: AccountStatus(accountStatusId: 1, accountStatus: 'Active'),
      notes: '🍉🍎안녕하세요? 반갑습니다.🚩',
      zipCode: '01234',
      address1: '서울특별시 강북구 오패산로30길 76',
      address2: '201호',
      createdAt: DateTime.parse('2025-02-21T21:45:23.93719+09:00'),
      updatedAt: DateTime.parse('9999-12-31T09:00:00+09:00'),
    ),
    'effective': DateTime.parse('2025-02-21T21:45:23.93719+09:00'),
    'expiry': DateTime.parse('2025-04-30T21:45:23.93719+09:00'),
  },
  {
    'isActive': true,
    'role': '회원',
    'user': User(
      id: 18,
      email: 'individual005@aaa.io',
      password: '',
      displayName: '김선생',
      status: AccountStatus(accountStatusId: 1, accountStatus: 'Active'),
      notes: '🍉🍎안녕하세요? 반갑습니다.🚩',
      zipCode: '01234',
      address1: '서울특별시 강북구 오패산로30길 76',
      address2: '201호',
      createdAt: DateTime.parse('2025-02-21T21:45:23.93719+09:00'),
      updatedAt: DateTime.parse('9999-12-31T09:00:00+09:00'),
    ),
    'effective': DateTime.parse('2025-04-21T21:45:23.93719+09:00'),
    'expiry': DateTime.parse('2026-02-21T21:45:23.93719+09:00'),
  },
];
