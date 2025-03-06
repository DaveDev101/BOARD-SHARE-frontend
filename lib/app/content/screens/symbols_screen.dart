import 'package:boardshare/app/content/controllers/symbol_list.dart';
import 'package:boardshare/packages/core/sizes.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'aac_symbol_card.dart';

final symbolListInitialCondition =
    Provider<(int, String)>((ref) => throw UnimplementedError());

class SymbolsScreen extends HookConsumerWidget {
  const SymbolsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sWidth = MediaQuery.of(context).size.width;
    final sHeight = MediaQuery.of(context).size.height;
    final horizontalPadding =
        (sWidth > kMaxWidth) ? (sWidth - kMaxWidth) / 2 : 0.0;

    final (page, search) = ref.watch(symbolListInitialCondition);
    final aacSymbols = ref.watch(symbolListProvider(search, page: page));

    // aacSymbols.when(
    //     data: (aacSymbols) => print(aacSymbols),
    //     error: (err, stack) => print(err),
    //     loading: () {});

    return SingleChildScrollView(
      child: Container(
        height: sHeight,
        color: Colors.grey[100],
        child: aacSymbols.when(
            data: (symbols) {
              if (symbols.$1 == 'SUCCESS') {
                return GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                  // physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300.0, // 동적 크기 적용
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 1,
                  ),
                  itemCount: symbols.$2,
                  itemBuilder: (context, index) {
                    return ProviderScope(
                      overrides: [
                        symbolAtIndex.overrideWithValue((index, search))
                      ],
                      child: AACSymbolCard(),
                    );
                  },
                );
              } else {
                return Center(child: Text('Getting symbols has failed!!!'));
              }
            },
            error: (err, stack) => Center(child: Text('$err')),
            loading: () => Center(child: const CircularProgressIndicator())),
      ),
    );
  }
}
