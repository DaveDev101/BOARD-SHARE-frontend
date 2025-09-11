import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:boardshare/app/content/controllers/board_at_index.dart';
import 'package:boardshare/packages/core/sizes.dart';
import 'package:boardshare/packages/utils/datetime_format_helpers.dart';

import '../../../../packages/core/colors.dart';
import '../../../../packages/ui_components/loading_image.dart';

final boardAtIndex = Provider<(int, String)>(
  (ref) => throw UnimplementedError(),
);

class AACBoardCard extends HookConsumerWidget {
  const AACBoardCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (index, search) = ref.watch(boardAtIndex);
    // final page = (index ~/ kQueryLimit) + 1;

    final aacBoardAtIndex = ref.watch(
      boardAtIndexProvider(index, searchTerm: search),
    );

    final isHovered = useState(false);

    return aacBoardAtIndex.when(
      data: (data) {
        final b = data.value;
        if (b == null) {
          return Container();
        } else {
          return LayoutBuilder(
            builder: (context, constraints) {
              return InkWell(
                onTap: () {
                  if (kDebugMode) {
                    print('BOARD [${b.boardTitle}] is tapped!');
                  }
                  // context.go('/content/boards/${b.boardId ?? 0}');
                  context.push('/content/boards/${b.boardId ?? 0}');
                },
                onHover: (hovering) => isHovered.value = hovering,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: isHovered.value
                        ? Border.all(color: Colors.black87, width: 4)
                        : null,
                  ),
                  padding: const EdgeInsets.fromLTRB(
                    kPadding,
                    kPadding,
                    kPadding,
                    0.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        b.boardTitle ?? '',
                        style: TextTheme.of(context).titleLarge,
                        // style: const TextStyle(
                        //   fontSize: 16,
                        //   fontWeight: FontWeight.bold,
                        // ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${"박민트"} | ${formatRelativeTime(b.updatedAt)}',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      // Text(
                      //   '${b.media?.length ?? 0} symbols',
                      //   style: TextStyle(color: Colors.grey[700]),
                      // ),
                      const SizedBox(height: 12.0),
                      // _buidBoardPreview(boards.value[index].media ?? []),
                      ClipRect(
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: constraints.maxWidth - kPadding * 2,
                            maxHeight:
                                constraints.maxHeight - kPadding * 3 - 44,
                          ),
                          decoration: BoxDecoration(
                            color: hexToColor(b.bgColor ?? '#ffffff'),
                          ),
                          padding: EdgeInsets.all(kPadding / 2),
                          child: GridView.count(
                            crossAxisCount: int.parse(
                              b.gridSize?.split('by').first.trim() ?? '0',
                            ),
                            shrinkWrap: true,
                            crossAxisSpacing: 2.0,
                            mainAxisSpacing: 2.0,
                            physics: NeverScrollableScrollPhysics(),
                            children: List.generate(
                              min(b.media?.length ?? 0, 16),
                              (index) => Container(
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  color: hexToColor(b.mBgColor ?? '#FFFFFF'),
                                ),
                                child: LayoutBuilder(
                                  builder: (context, con) {
                                    // print(
                                    //     '${constraints.maxWidth} : ${con.maxWidth}');
                                    return Stack(
                                      children: [
                                        // Image.network(
                                        //   b.media![index].mediumUrl!,
                                        //   width: con.maxWidth,
                                        //   height: con.maxHeight,
                                        // ),
                                        LoadingImage(
                                          url: b.media![index].mediumUrl!,
                                          width: con.maxWidth,
                                          height: con.maxHeight,
                                        ),
                                        Positioned(
                                          top: 2.0,
                                          width: con.maxWidth,
                                          child: Text(
                                            b.media![index].customTitle ?? '',
                                            style: TextStyle(
                                              fontSize: b.mFontSize ?? 12.0,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }
      },
      error: (err, stack) {
        if (kDebugMode) {
          print('AAC BOARD at Index err: $err');
        }
        return Text('ERR!');
      },
      loading: () {
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
