import 'package:boardshare/app/user/controllers/my_boards_ctl.dart';
import 'package:boardshare/app/user/screens/ui_components/my_board_card.dart';
import 'package:boardshare/app/user/screens/ui_components/user_content_title.dart';
import 'package:boardshare/packages/core/sizes.dart';
import 'package:boardshare/packages/ui_components/footer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../packages/core/colors.dart';

final myBoardsInitialCondition = Provider<(int, String)>(
  (ref) => throw UnimplementedError(),
);

class MyBoardsScreen extends HookConsumerWidget {
  const MyBoardsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sWidth = MediaQuery.of(context).size.width;
    final hPadding = (sWidth > kMaxWidth)
        ? (sWidth - kMaxWidth) / 2
        : kESpace * 2;

    final (page, search) = ref.watch(myBoardsInitialCondition);
    final myBoards = ref.watch(myBoardsProvider(search, page: page));

    return Container(
      // height: 1200,
      // color: Colors.grey[200],
      color: kBgColor,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserContentTitle(
              title: '내 의사소통판',
              notes: '내가 만든 의사소통판 목록이 표시됩니다.',
              horizontalPadding: hPadding,
            ),
          ),
          myBoards.when(
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
                          myBoardAtIndexCondition.overrideWithValue((
                            index,
                            search,
                          )),
                        ],
                        child: MyBoardCard(),
                      );
                    }, childCount: bs.$2),
                  ),
                );
              } else {
                return SliverToBoxAdapter(
                  child: Center(child: Text('Getting my boards has failed!!!')),
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
