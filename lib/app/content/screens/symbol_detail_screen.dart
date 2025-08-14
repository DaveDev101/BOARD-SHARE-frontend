import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:boardshare/app/content/controllers/symbol_detail.dart';
import 'package:boardshare/app/content/screens/ui_components/symbol_modification.dart';
import 'package:boardshare/app/content/screens/ui_components/symbol_title_download_button.dart';

import '../../../packages/core/sizes.dart';
import '../../../packages/ui_components/footer.dart';

final selectedSymbolId = Provider<int>((ref) => throw UnimplementedError());

final GlobalKey _previewContainer = GlobalKey();

class SymbolDetailScreen extends HookConsumerWidget {
  const SymbolDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sWidth = MediaQuery.of(context).size.width;
    final sHeight = MediaQuery.of(context).size.height;
    final hPadding = (sWidth > kMaxWidth) ? (sWidth - kMaxWidth) / 2 : 0.0;
    final symbolHeight = 608.0;
    final isHorizontal1 = (sWidth >= 1168);
    final isHorizontal2 = (sWidth >= 1088);
    final symbolBgHeight = isHorizontal1 ? 744.0 : 1224.0;
    final spaceBwSymbolAndButton = isHorizontal2 ? kESpace * 4.0 : kSpace / 5.0;

    final sId = ref.watch(selectedSymbolId);
    final symbolData = ref.watch(symbolDetailProvider(sId));

    return symbolData.when(
      error: (err, stack) => Text('$err'),
      loading: () => SizedBox(
        height: sHeight,
        child: Center(child: const CircularProgressIndicator()),
      ),
      data: (data) {
        final s = data.$2;
        final sm = s?.medium;

        if (data.$1 != "SUCCESS" ||
            s == null ||
            sm == null ||
            sm.mediumUrl == null) {
          return Text('NO SUCH SYMBOL!!!');
        }

        return CustomScrollView(
          controller: PrimaryScrollController.of(context),
          physics: ClampingScrollPhysics(),
          slivers: [
            /// symbol area incl. image controls, title & download button
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // height: 688.0,
                    height: symbolBgHeight,
                    width: sWidth,
                    color: Colors.black87,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: hPadding),
                      child: Center(
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          children: [
                            /// symbol and image control buttons
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: SymbolModification(
                                container: _previewContainer,
                                symbolHeight: symbolHeight,
                                sm: sm,
                                s: s,
                              ),
                            ),

                            /// space b/w symbol preview and download button
                            isHorizontal2
                                ? SizedBox(width: spaceBwSymbolAndButton)
                                : SizedBox(height: spaceBwSymbolAndButton),

                            /// title and download button
                            SymbolTitleDownload(
                              container: _previewContainer,
                              symbol: s,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: kESpace),

                  // 비슷한 아이콘 리스트
                  // Text(
                  //   "You may also like",
                  //   style: TextStyle(
                  //       fontSize: 18, fontWeight: FontWeight.bold),
                  // ),
                  // SizedBox(height: 8),
                ],
              ),
            ),

            /// thesaurus buttons
            if (s.symbolExcerpt != null && s.symbolExcerpt!.isNotEmpty)
              SliverToBoxAdapter(
                child: Container(
                  width: sWidth,
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: hPadding),
                  child: Wrap(
                    children: s.symbolExcerpt!
                        .split(',')
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ActionChip(
                              label: Text(e),
                              backgroundColor: Colors.grey[200],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                                side: BorderSide.none, // border
                              ),
                              side: BorderSide.none,
                              onPressed: () {},
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),

            /// similar symbols: GridView
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: hPadding,
                vertical: kESpace,
              ),
              sliver: SliverGrid(
                // padding:
                // EdgeInsets.symmetric(horizontal: horizontalPadding),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                delegate: SliverChildBuilderDelegate((
                  BuildContext context,
                  int index,
                ) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.notifications,
                      size: 40,
                      color: Colors.black,
                    ),
                  );
                }, childCount: 100),
              ),
            ),

            /// Footer
            SliverToBoxAdapter(child: DFooter(dark: false)),
          ],
        );
      },
    );
  }
}
