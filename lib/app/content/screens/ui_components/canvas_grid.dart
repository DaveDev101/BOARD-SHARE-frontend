// lib/widgets/canvas_grid.dart
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../packages/core/sizes.dart';
// import '../../../../packages/ui_components/loading_image.dart';
import '../../controllers/board_editor.dart';
import '../../models/aac_post.dart';
import '../../models/media_model.dart';
// import 'media_library.dart';
import 'medium_item.dart';

final boardBeingEdited = Provider<AACPost>((ref) => throw UnimplementedError());

class CanvasGrid extends HookConsumerWidget {
  const CanvasGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final previousBoardData = ref.watch(boardBeingEdited);
    final newBoardData = ref.watch(boardEditorProvider(previousBoardData));

    if (kDebugMode) {
      int index = 0;
      for (var data in newBoardData.media) {
        print('==> title [$index]: ${data?.title}');
        index++;
      }
    }

    return Container(
      color: newBoardData.bgColor ?? Colors.white,
      child: GridView.builder(
        padding: EdgeInsets.all(kPadding * 2),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: int.parse(
            newBoardData.gridSize?.split('by').first.trim() ?? '0',
          ),
          mainAxisSpacing: kSpace,
          crossAxisSpacing: kSpace,
        ),
        itemCount: newBoardData.media.length,
        itemBuilder: (context, index) {
          if (kDebugMode) {
            print(
              '==> title [$index] in itemBuilder: ${newBoardData.media[index]?.title}',
            );
          }

          // final medium = boardEdition.gridSymbols[index];
          return DragTarget<MediaModel>(
            // 드롭을 수락할지 결정
            onWillAcceptWithDetails: (data) => true,
            // 드롭이 성공했을 때 호출
            onAcceptWithDetails: (data) {
              // context.read<BoardProvider>().placeSymbol(index, data);

              if (kDebugMode) {
                print('==> onAcceptWithDetails data: ${data.data.title}');
              }

              ref
                  .read(boardEditorProvider(previousBoardData).notifier)
                  .placeSymbol(index, data.data);
            },
            builder: (context, candidateData, rejectedData) {
              // symbol이 있으면 SymbolItem을, 없으면 빈 칸을 표시
              // if (kDebugMode) {
              //   print('candidateData: $candidateData');
              // }
              if (newBoardData.media[index] != null) {
                // return MediumItem(medium: newBoardData[index]!);
                return Container(
                  decoration: candidateData.isNotEmpty
                      ? BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          color: Colors.white,
                          // color: hexToColor(data?.mBgColor ?? '#FFFFFF'),
                        )
                      : BoxDecoration(
                          // border: Border.all(color: Colors.grey[300]!),
                          color: Colors.white.withAlpha(100),
                          // color: hexToColor(data?.mBgColor ?? '#FFFFFF'),
                        ),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      if (kDebugMode) {
                        print(
                          '==> title [$index] in layoutBuilder: ${newBoardData.media[index]?.title}',
                        );
                      }

                      return Draggable<MediaModel>(
                        data: newBoardData.media[index], // 드래그 시 전달할 데이터
                        feedback: Center(
                          child: MediumItem(
                            medium: newBoardData.media[index]!,
                            isDragging: true,
                            isTargeted: candidateData.isNotEmpty,
                            width: constraints.maxWidth,
                            height: constraints.maxHeight,
                          ),
                        ),
                        onDragCompleted: () {
                          if (kDebugMode) {
                            print(
                              '==> onDragCompleted data: ${newBoardData.media[index]?.title}',
                            );
                          }

                          ref
                              .read(
                                boardEditorProvider(previousBoardData).notifier,
                              )
                              .removeSymbol(index);
                        }, // 드래그 중 표시될 위젯
                        child: Stack(
                          children: [
                            MediumItem(
                              medium: newBoardData.media[index]!,
                              width: constraints.maxWidth,
                              height: constraints.maxHeight,
                              isTextEditable: true,
                              func: (value) {
                                ref
                                    .read(
                                      boardEditorProvider(
                                        ref.watch(boardBeingEdited),
                                      ).notifier,
                                    )
                                    .updateSymbolTitle(index, value);
                              },
                            ),
                            Positioned(
                              bottom: kDSpace,
                              right: kDSpace,
                              child: IconButton(
                                onPressed: () {
                                  ref
                                      .read(
                                        boardEditorProvider(
                                          previousBoardData,
                                        ).notifier,
                                      )
                                      .removeSymbol(index);
                                },
                                icon: Icon(Icons.cancel_rounded),
                              ),
                            ),
                          ],
                        ), // 평상시 표시될 위젯
                      );
                      // return Stack(
                      //   children: [
                      //     LoadingImage(
                      //       url: newBoardData.media[index]?.imageUrl ?? '',
                      //       width: constraints.maxWidth,
                      //       height: constraints.maxHeight,
                      //     ),
                      //     Positioned(
                      //       top: kDSpace,
                      //       width: constraints.maxWidth,
                      //       child: Text(
                      //         newBoardData.media[index]?.title ?? '',
                      //         // style: TextStyle(
                      //         //   fontSize: double.parse(
                      //         //     data?.mFontSize ?? '17.0',
                      //         //   ),
                      //         // ),
                      //         textAlign: TextAlign.center,
                      //       ),
                      //     ),
                      //   ],
                      // );
                    },
                  ),
                );
              } else {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      // 드래그 중인 아이템이 위에 있으면 테두리 색상 변경
                      color: candidateData.isNotEmpty
                          ? Colors.blue
                          : Colors.grey[300]!,
                    ),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
