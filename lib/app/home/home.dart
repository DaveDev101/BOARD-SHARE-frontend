import 'package:boardshare/packages/core/sizes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../packages/ui_components/bars.dart';
import '../../packages/ui_components/footer.dart';

class HomeScreen extends HookConsumerWidget {
  HomeScreen({super.key});

  final List<String> gridItems = List.generate(5, (index) => 'Item $index');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final contentsWidth = (width < kMaxMobileWidth)
        ? width - kPadding * 10
        : (width < kMaxWidth)
        ? width - kPadding * 14
        : kMaxWidth - kPadding * 20;
    final padding = (width - contentsWidth) / 2;

    if (kDebugMode) {
      print('');
      print(
        'theme.headlineLarge font size: ${Theme.of(context).textTheme.headlineLarge?.fontSize}',
      );
      print(
        'theme.headlineLarge font family string: ${Theme.of(context).textTheme.headlineLarge?.fontFamily}',
      );
      print('');
    }

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          /// search bar made of sliver app bar
          buildSearchAppBar(),

          /// News
          buildTitle(
            text: '새 소식',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          buildContents(padding),

          /// New Symbols
          buildTitle(
            text: '새로 추가된 상징',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          buildContents(padding),

          // SliverLayoutBuilder(
          //   builder: (context, constraints) {
          //     double width = constraints.crossAxisExtent < kMaxWidth
          //         ? constraints.crossAxisExtent - kPadding
          //         : kMaxWidth;
          //     return buildContents((constraints.crossAxisExtent - width) / 2);
          //   },
          // ),

          /// footer
          buildFooter(),
        ],
      ),
    );
  }

  SliverToBoxAdapter buildFooter() {
    return SliverToBoxAdapter(child: DFooter(dark: true));
  }

  SliverPadding buildContents(double padding) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      sliver: SliverConstrainedCrossAxis(
        maxExtent: kMaxWidth,
        sliver: SliverGrid(
          // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //   crossAxisCount: 3,
          //   crossAxisSpacing: 10,
          //   mainAxisSpacing: 10,
          //   childAspectRatio: 1,
          // ),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 360.0, // Dynamic layout
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) => Card(
              color: Colors.grey[200],
              child: Center(child: Text(gridItems[index])),
            ),
            childCount: gridItems.length,
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter buildTitle({
    required String text,
    required TextStyle style,
  }) {
    return SliverToBoxAdapter(
      child: Container(
        constraints: BoxConstraints(maxWidth: kMaxWidth),
        height: kAppBarHeight * 1.8,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: kEMargin),
              Text(
                text,
                style: style,
                // 'SHARE YOUR BOARD!',
                // style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SliverAppBar buildSearchAppBar() {
    return SliverAppBar(
      expandedHeight: kAppBarExtendedHeight,
      collapsedHeight: kAppBarHeight,
      pinned: true,
      floating: false,
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          bool isCollapsed = constraints.biggest.height <= (kAppBarHeight + 10);
          return FlexibleSpaceBar(
            titlePadding: EdgeInsets.zero,
            title: AnimatedOpacity(
              duration: const Duration(milliseconds: 100),
              opacity: isCollapsed ? 1.0 : 0.0,
              child: isCollapsed ? DCollapsedHomeAppBar() : Container(),
            ),
            background: isCollapsed ? Container() : DExtendedHomeAppBar(),
          );
        },
      ),
      backgroundColor: Colors.white,
    );
  }
}
