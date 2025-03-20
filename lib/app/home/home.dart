import 'package:boardshare/packages/core/sizes.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../packages/ui_components/bars.dart';
import '../../packages/ui_components/footer.dart';

class HomeScreen extends HookConsumerWidget {
  HomeScreen({super.key});

  final List<String> gridItems = List.generate(20, (index) => 'Item $index');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: kAppBarExtendedHeight,
            collapsedHeight: kAppBarHeight,
            pinned: true,
            floating: false,
            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                bool isCollapsed =
                    constraints.biggest.height <= (kAppBarHeight + 10);
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
          ),
          SliverToBoxAdapter(
            child: Container(
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              height: kAppBarHeight * 3,
              child: Center(
                child: Text(
                  'SHARE YOUR BOARD!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SliverLayoutBuilder(builder: (context, constraints) {
            double width = constraints.crossAxisExtent < kMaxWidth
                ? constraints.crossAxisExtent
                : kMaxWidth;
            return SliverPadding(
              padding: EdgeInsets.symmetric(
                  horizontal: (constraints.crossAxisExtent - width) / 2),
              sliver: SliverConstrainedCrossAxis(
                maxExtent: kMaxWidth,
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => Card(
                      color: Colors.grey[200],
                      child: Center(child: Text(gridItems[index])),
                    ),
                    childCount: gridItems.length,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                ),
              ),
            );
          }),
          // Footer
          SliverToBoxAdapter(
            child: DFooter(dark: true),
          ),
        ],
      ),
    );
  }
}
