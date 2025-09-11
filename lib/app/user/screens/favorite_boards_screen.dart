import 'package:boardshare/app/user/controllers/favorite_boards_ctl.dart';
import 'package:boardshare/app/user/screens/ui_components/favorite_board_card.dart';
import 'package:boardshare/app/user/screens/ui_components/user_content_title.dart';
import 'package:boardshare/packages/core/sizes.dart';
import 'package:boardshare/packages/ui_components/footer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../packages/core/colors.dart';

final favoriteBoardsInitialCondition = Provider<(int, String)>(
  (ref) => throw UnimplementedError(),
);

class FavoriteBoardsScreen extends HookConsumerWidget {
  const FavoriteBoardsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sWidth = MediaQuery.of(context).size.width;
    final hPadding = (sWidth > kMaxWidth)
        ? (sWidth - kMaxWidth) / 2
        : kESpace * 2;

    final (page, search) = ref.watch(favoriteBoardsInitialCondition);
    final favoriteBoards = ref.watch(
      favoriteBoardsCtlProvider(search, page: page),
    );

    return Container(
      // height: 1200,
      // color: Colors.grey[200],
      color: kBgColor,
      child: CustomScrollView(
        controller: PrimaryScrollController.of(context),
        physics: ClampingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: UserContentTitle(
              title: '즐겨찾기 - 의사소통판',
              notes: '즐겨찾기에 추가한 의사소통판 목록(❤️ 표시한 의사소통판들)이 표시됩니다.',
              horizontalPadding: hPadding,
            ),
          ),
          favoriteBoards.when(
            data: (bs) {
              if (bs.$1 == 'SUCCESS') {
                if (kDebugMode) print(bs.$3);
                return SliverPadding(
                  padding: EdgeInsets.symmetric(
                    horizontal: hPadding,
                    vertical: kESpace,
                  ),
                  sliver: SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 480.0,
                          crossAxisSpacing: kPadding,
                          mainAxisSpacing: kPadding,
                          childAspectRatio: 1.0,
                        ),
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return ProviderScope(
                        overrides: [
                          favoriteBoardAtIndexCondition.overrideWithValue((
                            index,
                            search,
                          )),
                        ],
                        child: FavoriteBoardCard(),
                      );
                    }, childCount: bs.$2),
                  ),
                );
              } else {
                return SliverToBoxAdapter(
                  child: Center(child: Text('Getting boards has failed!!!')),
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
  }
}
