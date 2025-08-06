import 'package:boardshare/app/content/controllers/symbol_list.dart';
import 'package:boardshare/packages/core/sizes.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../packages/ui_components/footer.dart';
import 'aac_symbol_card.dart';

final symbolListInitialCondition = Provider<(int, String)>(
  (ref) => throw UnimplementedError(),
);

class SymbolListScreen extends HookConsumerWidget {
  const SymbolListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sWidth = MediaQuery.of(context).size.width;
    // final sHeight = MediaQuery.of(context).size.height;
    final horizontalPadding = (sWidth > kMaxWidth)
        ? (sWidth - kMaxWidth) / 2
        : 0.0;

    final (page, search) = ref.watch(symbolListInitialCondition);
    final aacSymbols = ref.watch(symbolListProvider(search, page: page));

    return Container(
      color: Colors.grey[200],
      child: CustomScrollView(
        slivers: [
          aacSymbols.when(
            data: (symbols) {
              if (symbols.$1 == 'SUCCESS') {
                return SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                  sliver: SliverGrid(
                    // padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300.0, // 동적 크기 적용
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: 1,
                    ),
                    delegate: SliverChildBuilderDelegate((
                      BuildContext context,
                      int index,
                    ) {
                      return ProviderScope(
                        overrides: [
                          symbolAtIndex.overrideWithValue((index, search)),
                        ],
                        child: AACSymbolCard(),
                      );
                    }, childCount: symbols.$2),
                  ),
                );
              } else {
                return SliverToBoxAdapter(
                  child: Center(child: Text('Getting symbols has failed!!!')),
                );
              }
            },
            error: (err, stack) =>
                SliverToBoxAdapter(child: Center(child: Text('$err'))),
            loading: () => SliverToBoxAdapter(
              child: Center(child: const CircularProgressIndicator()),
            ),
          ),
          // Footer
          SliverToBoxAdapter(child: DFooter(dark: false)),
        ],
      ),
    );

    // return SingleChildScrollView(
    //   child: Container(
    //     height: sHeight,
    //     color: Colors.grey[100],
    //     child: aacSymbols.when(
    //         data: (symbols) {
    //           if (symbols.$1 == 'SUCCESS') {
    //             return GridView.builder(
    //               padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
    //               // physics: NeverScrollableScrollPhysics(),
    //               gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    //                 maxCrossAxisExtent: 300.0, // 동적 크기 적용
    //                 crossAxisSpacing: 8,
    //                 mainAxisSpacing: 8,
    //                 childAspectRatio: 1,
    //               ),
    //               itemCount: symbols.$2,
    //               itemBuilder: (context, index) {
    //                 return ProviderScope(
    //                   overrides: [
    //                     symbolAtIndex.overrideWithValue((index, search))
    //                   ],
    //                   child: AACSymbolCard(),
    //                 );
    //               },
    //             );
    //           } else {
    //             return Center(child: Text('Getting symbols has failed!!!'));
    //           }
    //         },
    //         error: (err, stack) => Center(child: Text('$err')),
    //         loading: () => Center(child: const CircularProgressIndicator())),
    //   ),
    // );
  }
}
