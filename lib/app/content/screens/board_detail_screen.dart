import 'package:boardshare/app/content/screens/ui_components/board_controls.dart';
import 'package:boardshare/app/content/screens/ui_components/board_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:boardshare/app/content/controllers/board_detail.dart';

import '../../../packages/core/colors.dart';
import '../../../packages/core/sizes.dart';
import '../../../packages/ui_components/footer.dart';

final selectedBoardId = Provider<int>((ref) => throw UnimplementedError());

final GlobalKey _boardPreviewContainer = GlobalKey();

class BoardDetailScreen extends HookConsumerWidget {
  const BoardDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sWidth = MediaQuery.of(context).size.width;
    final sHeight = MediaQuery.of(context).size.height;
    final sType = getSType(sWidth);

    final hPadding = switch (sType) {
      // SType.largeWeb => (sWidth - kMaxWidth) / 2.0 + 220.0,
      // SType.smallWeb => 220.0 * ((sWidth / kMaxWidth) / 2.0),
      // SType.tablet => kESpace * 2.0,
      // SType.mobile => kSpace / 2.0,
      SType.largeWeb => (sWidth - kMaxWidth) / 2.0,
      SType.smallWeb => kPadding,
      SType.tablet => kSpace,
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
          // width: double.infinity,
          child: CustomScrollView(
            controller: PrimaryScrollController.of(context),
            physics: ClampingScrollPhysics(),
            slivers: [
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  horizontal: hPadding,
                  vertical: kESpace,
                ),
                sliver: SliverToBoxAdapter(
                  child: SizedBox(
                    width: double.infinity,
                    child: (sType.index >= 2)
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(flex: 6, child: BoardView(data: b)),
                              Flexible(
                                flex: 1,
                                child: const SizedBox(width: kESpace * 2),
                              ),
                              Expanded(
                                flex: 4,
                                child: BoardControls(
                                  container: _boardPreviewContainer,
                                  post: b,
                                ),
                              ),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BoardView(data: b),
                              const SizedBox(width: kESpace * 2),
                              BoardControls(
                                container: _boardPreviewContainer,
                                post: b,
                              ),
                            ],
                          ),
                  ),
                ),
              ),

              // SliverPadding(
              //   padding: EdgeInsets.symmetric(
              //     horizontal: hPadding,
              //     vertical: kESpace,
              //   ),
              //   sliver: SliverToBoxAdapter(child: BoardView(data: b)),
              // ),

              /// footer
              SliverToBoxAdapter(child: DFooter(dark: false)),
            ],
          ),
        );
      },
    );
  }
}
