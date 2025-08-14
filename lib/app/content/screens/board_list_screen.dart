import 'package:boardshare/app/content/controllers/board_list.dart';
import 'package:boardshare/app/content/screens/aac_board_card.dart';
import 'package:boardshare/app/content/screens/ui_components/content_segmented_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../packages/core/colors.dart';
import '../../../packages/core/sizes.dart';
import '../../../packages/ui_components/footer.dart';

final boardListInitialCondition = Provider<(int, String)>(
  (ref) => throw UnimplementedError(),
);

class BoardListScreen extends HookConsumerWidget {
  const BoardListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sWidth = MediaQuery.of(context).size.width;
    final hPadding = (sWidth > kMaxWidth)
        ? (sWidth - kMaxWidth) / 2.0
        : kPadding / 2.0;

    final (page, search) = ref.watch(boardListInitialCondition);
    final boards = ref.watch(boardListProvider(search, page: page));

    final selectedIndex = useState(1);
    final List<String> segments = [
      '상징 (41,729)',
      '의사소통판 (1,861)',
      '한스피크자료 (5,584)',
    ];

    return Container(
      // height: 1200,
      // color: Colors.grey[200],
      color: kBgColor,
      child: CustomScrollView(
        controller: PrimaryScrollController.of(context),
        physics: ClampingScrollPhysics(),
        slivers: [
          /// Segmented Button: [ Symbols | Boards | Materials ]
          SliverToBoxAdapter(
            child: ContentSegmentedButton(
              horizontalPadding: hPadding,
              segments: segments,
              selectedIndex: selectedIndex,
            ),
          ),

          /// boards: search results
          boards.when(
            error: (err, stack) =>
                SliverToBoxAdapter(child: Center(child: Text('$err'))),
            loading: () => SliverToBoxAdapter(
              child: Center(child: const CircularProgressIndicator()),
            ),
            data: (bs) {
              if (bs.$1 == 'SUCCESS') {
                return SliverPadding(
                  padding: EdgeInsets.symmetric(
                    horizontal: hPadding,
                    vertical: kESpace,
                  ),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 480.0, // Dynamic layout
                      crossAxisSpacing: kPadding,
                      mainAxisSpacing: kPadding,
                      childAspectRatio: 1,
                    ),
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return ProviderScope(
                        overrides: [
                          boardAtIndex.overrideWithValue((index, search)),
                        ],
                        child: AACBoardCard(),
                      );
                    }, childCount: bs.$2),
                  ),
                );
              } else {
                return SliverToBoxAdapter(
                  child: Center(child: Text('Getting symbols has failed!!!')),
                );
              }
            },
          ),

          /// Footer
          SliverToBoxAdapter(child: DFooter(dark: false)),
        ],
      ),
    );
  }

  // Widget _buidBoardPreview(List<ESMedium> media) {
  //   return GridView.builder(
  //     itemCount: min(media.length, 1),
  //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //       crossAxisCount: 4,
  //       crossAxisSpacing: 4,
  //       mainAxisSpacing: 4,
  //       childAspectRatio: 1,
  //     ),
  //     itemBuilder: (BuildContext context, int index) => Container(
  //       decoration: BoxDecoration(
  //         color: Colors.white,
  //       ),
  //       padding: const EdgeInsets.all(4),
  //       child:
  //           (media[index].mediumUrl == null || media[index].mediumUrl!.isEmpty)
  //               ? Container()
  //               // : Image.network(media[index].mediumUrl!)
  //               : Image.network(
  //                   media[index].mediumUrl!,
  //                   fit: BoxFit.cover,
  //                   width: 10,
  //                   height: 10,
  //                   frameBuilder: (c, image, frame, sync) {
  //                     if (!sync && frame == null) {
  //                       return const Center(child: CircularProgressIndicator());
  //                     }
  //                     return image;
  //                   },
  //                   errorBuilder: (c, err, stack) {
  //                     // if (err.toString().contains('429') && retryCount.value < _maxRetry) {
  //                     // if (retryCount.value < _maxRetry) {
  //                     //   Future.delayed(const Duration(seconds: 2), () {
  //                     //     retryCount.value = retryCount.value + 1;
  //                     //     imageKey.value = UniqueKey();
  //                     //   });
  //                     //   return const Center(child: CircularProgressIndicator());
  //                     // }
  //                     return const Center(child: Text('오류 발생!'));
  //                   },
  //                 ),
  //     ),
  //   );
  // }
}
