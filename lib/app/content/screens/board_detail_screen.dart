import 'package:boardshare/app/content/screens/ui_components/board_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:boardshare/app/content/controllers/board_detail.dart';

import '../../../packages/core/colors.dart';
import '../../../packages/core/sizes.dart';
import '../../../packages/ui_components/footer.dart';

final selectedBoardId = Provider<int>((ref) => throw UnimplementedError());

class BoardDetailScreen extends HookConsumerWidget {
  const BoardDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sWidth = MediaQuery.of(context).size.width;
    final sHeight = MediaQuery.of(context).size.height;
    final sType = getSType(sWidth);

    final hPadding = switch (sType) {
      SType.largeWeb => (sWidth - kMaxWidth) / 2.0 + 220.0,
      SType.smallWeb => 220.0 * ((sWidth / kMaxWidth) / 2.0),
      SType.tablet => kESpace * 2.0,
      SType.mobile => kSpace / 2.0,
    };

    final bId = ref.watch(selectedBoardId);
    final boardData = ref.watch(boardDetailProvider(bId));

    return boardData.when(
      error: (err, stack) => Text('$err'),
      loading: () => SizedBox(
        height: sHeight,
        child: Center(child: const CircularProgressIndicator()),
      ),
      data: (data) {
        final b = data.$2;

        if (data.$1 != "SUCCESS" || b == null) {
          return Text('NO SUCH BOARD!!!');
        }

        return Container(
          color: kBgColor,
          child: CustomScrollView(
            controller: PrimaryScrollController.of(context),
            physics: ClampingScrollPhysics(),
            slivers: [
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  horizontal: hPadding,
                  vertical: kESpace,
                ),
                sliver: SliverToBoxAdapter(child: BoardView(data: b)),
              ),

              /// footer
              SliverToBoxAdapter(child: DFooter(dark: false)),
            ],
          ),
        );
      },
    );
  }
}
