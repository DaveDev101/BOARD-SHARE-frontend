import 'package:boardshare/packages/core/sizes.dart';
import 'package:boardshare/packages/ui_components/buttons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../packages/ui_components/bars.dart';

class ContentLayout extends HookConsumerWidget {
  const ContentLayout({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverAppBar(
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(1), // 테두리 높이 조절
                      child: Container(
                        color: Colors.grey[300], // 테두리 색상
                        height: 2, // 테두리 두께
                      ),
                    ),
                    expandedHeight: kAppBarHeightE,
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
                            child: isCollapsed
                                ? DCollapsedContentAppBar()
                                : Container(),
                          ),
                          background: isCollapsed
                              ? Container()
                              : DExtendedContentAppBar(),
                        );
                      },
                    ),
                    backgroundColor: Colors.white,
                  ),
                ],
            body: child)

        // CustomScrollView(
        //   slivers: [
        //     SliverToBoxAdapter(
        //       child: Container(
        //         constraints: BoxConstraints(maxWidth: kMaxWidth),
        //         height: kAppBarHeight * 3,
        //         // child: Center(
        //         //   child: Text(
        //         //     'SHARE YOUR BOARD!',
        //         //     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        //         //   ),
        //         // ),
        //         child: child,
        //       ),
        //     ),
        //     SliverLayoutBuilder(builder: (context, constraints) {
        //       double width = constraints.crossAxisExtent < kMaxWidth
        //           ? constraints.crossAxisExtent
        //           : kMaxWidth;
        //       return SliverPadding(
        //         padding: EdgeInsets.symmetric(
        //           horizontal: (constraints.crossAxisExtent - width) / 2,
        //           // horizontal: kMaxWidth,
        //         ),
        //         sliver: SliverConstrainedCrossAxis(
        //           maxExtent: kMaxWidth,
        //           sliver: SliverGrid(
        //             delegate: SliverChildBuilderDelegate(
        //               (context, index) => Card(
        //                 color: Colors.grey[200],
        //                 child: Center(child: Text('$index')),
        //               ),
        //               childCount: 200,
        //             ),
        //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //               crossAxisCount: 5,
        //               crossAxisSpacing: 10,
        //               mainAxisSpacing: 10,
        //               childAspectRatio: 1,
        //             ),
        //           ),
        //         ),
        //       );
        //     })
        //   ],
        // ),
        );
  }
}

class _OldRayOut extends HookConsumerWidget {
  const _OldRayOut({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: kAppBarHeightE,
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
                    child:
                        isCollapsed ? DCollapsedContentAppBar() : Container(),
                  ),
                  background:
                      isCollapsed ? Container() : DExtendedContentAppBar(),
                );
              },
            ),
            backgroundColor: Colors.white,
          ),
          SliverToBoxAdapter(
            child: Container(
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              height: kAppBarHeight * 3,
              // child: Center(
              //   child: Text(
              //     'SHARE YOUR BOARD!',
              //     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              //   ),
              // ),
              child: child,
            ),
          ),
          SliverLayoutBuilder(builder: (context, constraints) {
            double width = constraints.crossAxisExtent < kMaxWidth
                ? constraints.crossAxisExtent
                : kMaxWidth;
            return SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: (constraints.crossAxisExtent - width) / 2,
                // horizontal: kMaxWidth,
              ),
              sliver: SliverConstrainedCrossAxis(
                maxExtent: kMaxWidth,
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => Card(
                      color: Colors.grey[200],
                      child: Center(child: Text('$index')),
                    ),
                    childCount: 200,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
