import 'package:boardshare/app/content/controllers/symbol_list.dart';
import 'package:boardshare/app/content/screens/ui_components/content_segmented_button.dart';
import 'package:boardshare/packages/core/colors.dart';
import 'package:boardshare/packages/core/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../packages/ui_components/footer.dart';
import 'ui_components/aac_symbol_card.dart';

final symbolListInitialCondition = Provider<(int, String)>(
  (ref) => throw UnimplementedError(),
);

class SymbolListScreen extends HookConsumerWidget {
  const SymbolListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sWidth = MediaQuery.of(context).size.width;
    final hPadding = (sWidth > kMaxWidth)
        ? (sWidth - kMaxWidth) / 2.0
        : kPadding / 2.0;

    final (page, search) = ref.watch(symbolListInitialCondition);
    final aacSymbols = ref.watch(symbolListProvider(search, page: page));

    final selectedIndex = useState(0);
    final List<String> segments = [
      '상징 (41,729)',
      '의사소통판 (1,861)',
      '한스피크자료 (5,584)',
    ];

    return Container(
      color: kBgColor,
      child: CustomScrollView(
        slivers: [
          /// Segmented Button: [ Symbols | Boards | Materials ]
          SliverToBoxAdapter(
            child: ContentSegmentedButton(
              horizontalPadding: hPadding,
              segments: segments,
              selectedIndex: selectedIndex,
            ),
          ),

          /// Symbols: search results
          aacSymbols.when(
            data: (symbols) {
              if (symbols.$1 == 'SUCCESS') {
                return SliverPadding(
                  padding: EdgeInsets.symmetric(
                    horizontal: hPadding,
                    vertical: kESpace,
                  ),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300.0, // Dynamic layout
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: 1,
                    ),
                    delegate: SliverChildBuilderDelegate((context, index) {
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

          /// Footer
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
    //               padding: EdgeInsets.symmetric(horizontal: hPadding),
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
