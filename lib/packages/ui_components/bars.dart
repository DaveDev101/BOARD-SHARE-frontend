import 'package:boardshare/app/user/screens/ui_components/userbars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../core/sizes.dart';
import 'buttons.dart';
import 'forms.dart';

///
/// Menu Bar
///
class MenuBar extends StatelessWidget {
  const MenuBar({super.key, bool? dark}) : _dark = dark ?? false;

  final bool _dark;

  @override
  Widget build(BuildContext context) {
    final sWidth = MediaQuery.of(context).size.width;
    if (sWidth < kMaxMobileWidth) {
      return _buildMobileMenuBar(context, _dark);
    } else {
      return _buildDesktopMenuBar(context, _dark);
    }
    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: [
    //     SizedBox(width: kSpace),
    //     DIconButton(
    //       icon: Icons.home,
    //       title: '',
    //       dark: _dark,
    //       func: () => context.go('/'),
    //     ),
    //     SizedBox(width: kDSpace),
    //     DButton(
    //       title: '상징',
    //       dark: _dark,
    //       func: () => context.go('/content/symbols'),
    //     ),
    //     SizedBox(width: kDSpace),
    //     DButton(
    //       title: '의사소통판',
    //       dark: _dark,
    //       func: () => context.go('/content/boards'),
    //     ),
    //     SizedBox(width: kDSpace),
    //     DButton(title: '한스피크자료', dark: _dark, func: () {}),
    //     SizedBox(width: kDSpace),
    //     DButton(title: '구독', dark: _dark, func: () {}),
    //     SizedBox(width: kDSpace),
    //     DIconButton(
    //       icon: Icons.more_horiz,
    //       title: '',
    //       dark: _dark,
    //       func: () {},
    //     ),
    //     Spacer(),
    //     DUserBar(darkBg: _dark),
    //     // DButton(
    //     //   title: '로그인',
    //     //   dark: true,
    //     //   transparent: true,
    //     //   func: () {
    //     //     context.go('/sign-in');
    //     //   },
    //     // ),
    //     // SizedBox(width: kDSpace),
    //     // DButton(
    //     //     title: '가입',
    //     //     dark: false,
    //     //     func: () {
    //     //       context.go('/sign-up');
    //     //     }),
    //     SizedBox(width: kSpace),
    //   ],
    // );
  }
}

Widget _buildMobileMenuBar(BuildContext context, bool isDark) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(width: kSpace),
      PopupMenuButton<String>(
        tooltip: '메뉴',
        icon: Icon(Icons.menu, color: isDark ? Colors.white : Colors.black87),
        color: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 1.0,
        position: PopupMenuPosition.over,
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 'home',
            onTap: () => context.go('/'),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(kPadding),
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.home_filled),
                  SizedBox(width: kSpace),
                  Text('홈'),
                  SizedBox(width: kESpace),
                ],
              ),
            ),
          ),
          PopupMenuItem(
            value: 'symbols',
            onTap: () => context.go('/content/symbols'),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(kPadding),
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.crop_square),
                  SizedBox(width: kSpace),
                  Text('상징'),
                  SizedBox(width: kESpace),
                ],
              ),
            ),
          ),
          PopupMenuItem(
            value: 'boards',
            onTap: () => context.go('/content/boards'),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(kPadding),
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.dashboard),
                  SizedBox(width: kSpace),
                  Text('의사소통판'),
                  SizedBox(width: kESpace),
                ],
              ),
            ),
          ),
          PopupMenuItem(
            value: 'hanspeakBook',
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(kPadding),
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.book_online),
                  SizedBox(width: kSpace),
                  Text('한스피크자료'),
                  SizedBox(width: kESpace),
                ],
              ),
            ),
          ),
          PopupMenuItem(
            value: 'subscription',
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(kPadding),
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.credit_card),
                  SizedBox(width: kSpace),
                  Text('구독'),
                  SizedBox(width: kESpace),
                ],
              ),
            ),
          ),
          PopupMenuItem(
            value: 'more',
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(kPadding),
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.more_vert),
                  SizedBox(width: kSpace),
                  Text('More...'),
                  SizedBox(width: kESpace),
                ],
              ),
            ),
          ),
        ],
      ),
      Spacer(),
      DUserBar(darkBg: isDark),
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
  );
}

Widget _buildDesktopMenuBar(BuildContext context, bool isDark) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(width: kSpace),
      DIconButton(
        icon: Icons.home,
        title: '',
        dark: isDark,
        func: () => context.go('/'),
      ),
      SizedBox(width: kDSpace),
      DButton(
        title: '상징',
        dark: isDark,
        func: () => context.go('/content/symbols'),
      ),
      SizedBox(width: kDSpace),
      DButton(
        title: '의사소통판',
        dark: isDark,
        func: () => context.go('/content/boards'),
      ),
      SizedBox(width: kDSpace),
      DButton(title: '한스피크자료', dark: isDark, func: () {}),
      SizedBox(width: kDSpace),
      DButton(title: '구독', dark: isDark, func: () {}),
      SizedBox(width: kDSpace),
      DIconButton(icon: Icons.more_horiz, title: '', dark: isDark, func: () {}),
      Spacer(),
      DUserBar(darkBg: isDark),
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
  );
}

///
/// Home AppBar
///
class DExtendedHomeAppBar extends StatelessWidget {
  const DExtendedHomeAppBar({super.key});

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
            child: MenuBar(dark: true),
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
                  child: DHomeSearchField(height: kEEFHeight),
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
  const DCollapsedHomeAppBar({super.key});

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
              _Logo(),
              // SvgPicture.asset('assets/imgs/logo/logo_b.svg'),
              // DIconButton(icon: Icons.menu, title: '', dark: false),
              // SizedBox(width: kESpace * 4),
              Expanded(child: DHomeSearchField(height: kEFHeight)),
              // SizedBox(width: kESpace * 4),
              // DUserBar(darkBg: false),
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

///
/// Content AppBar
///
class DExtendedContentAppBar extends StatelessWidget {
  const DExtendedContentAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: kMaxWidth),
      decoration: BoxDecoration(
        color: Colors.white,
        // color: Colors.black,
        // image: DecorationImage(
        //   image: AssetImage('assets/imgs/logo/logo_aacboard.jpg'),
        //   fit: BoxFit.contain,
        //   colorFilter: ColorFilter.mode(
        //     Colors.black.withAlpha(225),
        //     BlendMode.darken,
        //   ),
        // ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: kDMargin),
          Container(
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            child: MenuBar(dark: false),
            // child: Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     // SizedBox(width: kSpace),
            //     DIconButton(
            //         icon: Icons.home, title: '', dark: false, func: () {}),
            //     SizedBox(width: kDSpace),
            //     DButton(
            //         title: '상징',
            //         dark: false,
            //         func: () {
            //           context.go('/content/symbols');
            //         }),
            //     SizedBox(width: kDSpace),
            //     DButton(
            //         title: '의사소통판',
            //         dark: false,
            //         func: () {
            //           context.go('/content/board');
            //         }),
            //     SizedBox(width: kDSpace),
            //     DButton(title: '한스피크자료', dark: false, func: () {}),
            //     SizedBox(width: kDSpace),
            //     DButton(title: '구독', dark: false, func: () {}),
            //     SizedBox(width: kDSpace),
            //     DIconButton(
            //         icon: Icons.more_horiz,
            //         title: '',
            //         dark: false,
            //         func: () {}),
            //     Spacer(),
            //     DUserBar(darkBg: false),
            //     // DButton(
            //     //   title: '로그인',
            //     //   dark: true,
            //     //   transparent: true,
            //     //   func: () {
            //     //     context.go('/sign-in');
            //     //   },
            //     // ),
            //     // SizedBox(width: kDSpace),
            //     // DButton(
            //     //     title: '가입',
            //     //     dark: false,
            //     //     func: () {
            //     //       context.go('/sign-up');
            //     //     }),
            //     SizedBox(width: kSpace),
            //   ],
            // ),
          ),
          SizedBox(height: kDMargin),
          Expanded(
            child: Container(
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: kSpace),
                  _Logo(),
                  // SvgPicture.asset('assets/imgs/logo/logo_b.svg'),
                  // DIconButton(icon: Icons.menu, title: '', dark: false),
                  // SizedBox(width: kESpace * 4),
                  Expanded(child: DHomeSearchField(height: kEFHeight)),
                  SizedBox(width: kSpace),
                ],
              ),
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
          SizedBox(height: kDMargin),
        ],
      ),
    );
  }
}

class DCollapsedContentAppBar extends StatelessWidget {
  const DCollapsedContentAppBar({super.key});

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
              _Logo(),
              // SvgPicture.asset('assets/imgs/logo/logo_b.svg'),
              // DIconButton(icon: Icons.menu, title: '', dark: false),
              Expanded(child: DHomeSearchField(height: kEFHeight)),
              // SizedBox(width: kESpace * 4),
              // DUserBar(darkBg: false),
              SizedBox(width: kSpace),
            ],
          ),
        ),
        Spacer(),
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

class _Logo extends StatelessWidget {
  const _Logo({super.key});

  @override
  Widget build(BuildContext context) {
    final sWidth = MediaQuery.of(context).size.width;
    if (sWidth < kMaxTabletWidth) {
      return Container();
    } else {
      return Row(
        children: [
          SvgPicture.asset('assets/imgs/logo/logo_b.svg'),
          SizedBox(width: kESpace * 4),
        ],
      );
    }
  }
}
