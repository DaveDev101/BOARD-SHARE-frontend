import 'package:boardshare/app/user/controllers/favorite_symbols_ctl.dart';
import 'package:boardshare/app/user/screens/ui_components/favorite_symbol_card.dart';
import 'package:boardshare/app/user/screens/ui_components/user_content_title.dart';
import 'package:boardshare/packages/core/sizes.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../packages/ui_components/footer.dart';

final favoriteSymbolsInitialCondition = Provider<(int, String)>(
  (ref) => throw UnimplementedError(),
);

class FavoriteSymbolsScreen extends HookConsumerWidget {
  const FavoriteSymbolsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sWidth = MediaQuery.of(context).size.width;
    // final sHeight = MediaQuery.of(context).size.height;
    final horizontalPadding = (sWidth > kMaxWidth)
        ? (sWidth - kMaxWidth) / 2
        : kESpace * 2;

    final (page, search) = ref.watch(favoriteSymbolsInitialCondition);
    final favoriteSymbols = ref.watch(
      favoriteSymbolsCtlProvider(search, page: page),
    );

    return Container(
      color: Colors.grey[200],
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserContentTitle(
              title: '즐겨찾기 - 상징',
              notes: '즐겨찾기에 추가한 상징 목록(❤️ 표시한 상징들)이 표시됩니다.',
              horizontalPadding: horizontalPadding,
            ),
          ),
          favoriteSymbols.when(
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
                          favoriteSymbolAtIndex.overrideWithValue((
                            index,
                            search,
                          )),
                        ],
                        child: FavoriteSymbolCard(),
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
