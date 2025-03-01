import 'package:boardshare/app/user/controllers/signin_controller.dart';
import 'package:boardshare/packages/core/portal_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/sizes.dart';
import 'buttons.dart';
import 'forms.dart';

class DExtendedHomeAppBar extends StatelessWidget {
  const DExtendedHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: kMaxWidth),
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage('assets/imgs/logo/logo_aacboard.jpg'),
          fit: BoxFit.contain,
          colorFilter: ColorFilter.mode(
            Colors.black.withAlpha(225),
            BlendMode.darken,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: kMargin),
          Container(
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: kSpace),
                DIconButton(
                    icon: Icons.home, title: '', dark: true, func: () {}),
                SizedBox(width: kDSpace),
                DButton(title: '상징', dark: true, func: () {}),
                SizedBox(width: kDSpace),
                DButton(title: '의사소통판', dark: true, func: () {}),
                SizedBox(width: kDSpace),
                DButton(title: '구독', dark: true, func: () {}),
                SizedBox(width: kDSpace),
                DIconButton(
                    icon: Icons.more_horiz, title: '', dark: true, func: () {}),
                Spacer(),
                DUserBar(darkBg: true),
                // DButton(
                //   title: '로그인',
                //   dark: true,
                //   transparent: true,
                //   func: () {
                //     context.go('/sign-in');
                //   },
                // ),
                // SizedBox(width: kDSpace),
                // DButton(
                //     title: '가입',
                //     dark: false,
                //     func: () {
                //       context.go('/sign-up');
                //     }),
                SizedBox(width: kSpace),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Symbols and Boards For AAC",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: kESpace * 2),
                Container(
                  constraints: BoxConstraints(maxWidth: kMaxWidth - 400),
                  child: DHomeSearchField(),
                ),
              ],
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Image.asset('assets/imgs/logo/logo_aacboard.jpg', width: 280.0),
          //     const SizedBox(width: kESpace * 2),
          //     Image.asset('assets/imgs/logo/logo_aacboard.jpg', width: 280.0),
          //     const SizedBox(width: kESpace * 2),
          //     Image.asset('assets/imgs/logo/logo_aacboard.jpg', width: 280.0),
          //   ],
          // ),
          SizedBox(height: kEMargin),
        ],
      ),
    );
  }
}

class DCollapsedHomeAppBar extends StatelessWidget {
  const DCollapsedHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Spacer(),
        Container(
          constraints: BoxConstraints(maxWidth: kMaxWidth),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: kSpace),
              SvgPicture.asset('assets/imgs/logo/logo_b.svg'),
              // DIconButton(icon: Icons.menu, title: '', dark: false),
              SizedBox(width: kESpace * 4),
              Expanded(child: DHomeSearchField()),
              SizedBox(width: kESpace * 4),
              DUserBar(darkBg: false),
              SizedBox(width: kSpace),
            ],
          ),
        ),
        Spacer(),
        Divider(),
        // Expanded(
        //   child: Container(
        //     width: double.infinity,
        //     decoration: BoxDecoration(
        //       color: Colors.white,
        //       border: Border(
        //         bottom: BorderSide(
        //           color: Colors.grey,
        //           width: 1.0,
        //         ),
        //       ),
        //     ),
        //   ),
        // )
      ],
    );
  }
}

final _userDropDownItems = [
  _UserDropDownItems(icon: Icons.account_circle, title: '사용자 정보'),
  _UserDropDownItems(icon: Icons.logout, title: '로그아웃'),
];

class _UserDropDownItems {
  const _UserDropDownItems({required this.icon, required this.title});

  final IconData icon;
  final String title;
}

class DUserBar extends HookConsumerWidget {
  const DUserBar({
    super.key,
    required this.darkBg,
  });

  final bool darkBg;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final isMenuDropped = useState(false);
    final portalCtl = ref.watch(portalControllerProvider);
    final selectedItem = useState<_UserDropDownItems>(_userDropDownItems[0]);
    final signinCtl = ref.watch(signinControllerProvider);

    // ref.listen(portalControllerProvider, (previous, isVisible) {
    //   if (kDebugMode) {
    //     print(
    //         '-------> ref.listen(portalControllerProvider: ($previous, $isVisible)');
    //   }
    //   isMenuDropped.value = isVisible;
    // });

    final unsignedWidget = Row(
      children: [
        DButton(
          title: '로그인',
          dark: darkBg ? true : false,
          transparent: darkBg ? false : true,
          func: () {
            context.go('/sign-in');
          },
        ),
        SizedBox(width: kDSpace),
        DButton(
          title: '가입',
          dark: darkBg ? false : true,
          func: () {
            context.go('/sign-up');
          },
        ),
      ],
    );

    return signinCtl.when(
      data: (data) {
        if (kDebugMode) print(data);

        if (data.$1.isEmpty) {
          final userInfo = data.$2.user.user;

          return PortalTarget(
            // visible: isMenuDropped.value,
            visible: portalCtl.$2,
            anchor: Aligned(
              follower: Alignment.topRight,
              target: Alignment.bottomRight,
              offset: Offset(0, kSpace * 2),
            ),
            portalFollower: _buildDropdownMenu((index) {
              // isMenuDropped.value = false;
              ref.read(portalControllerProvider.notifier).makeAllInvisible();
              selectedItem.value = _userDropDownItems[index];
            }),
            child: InkWell(
              onTap: () {
                // isMenuDropped.value = !isMenuDropped.value;
                ref.read(portalControllerProvider.notifier).toggleVisibility(2);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: darkBg ? Colors.white : Colors.black,
                    radius: 20,
                    child: Text(
                      userInfo?.displayName?.toUpperCase()[0] ?? '',
                      style: TextStyle(
                          color: darkBg ? Colors.black : Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return unsignedWidget;
        }
      },
      error: (err, stack) {
        return Container();
      },
      loading: () => CircularProgressIndicator(
          color: darkBg ? Colors.white : Colors.black12),
    );
  }

  // Drop Down Menu
  Widget _buildDropdownMenu(Function func) {
    return Material(
      elevation: 4.0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4.0),
        ),
        width: 180.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            _userDropDownItems.length,
            (index) => DDropDownItem(
              itemIndex: index,
              icon: _userDropDownItems[index].icon,
              text: _userDropDownItems[index].title,
              func: (index) => func(index),
            ),
          ),
        ),
      ),
    );
  }
}
