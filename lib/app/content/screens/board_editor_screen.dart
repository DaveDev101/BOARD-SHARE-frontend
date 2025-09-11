import 'package:boardshare/app/content/controllers/board_editor.dart';
import 'package:boardshare/app/content/models/aac_post.dart';
import 'package:boardshare/app/content/screens/ui_components/canvas_grid.dart';
import 'package:boardshare/app/content/screens/ui_components/media_library.dart';
import 'package:boardshare/app/content/screens/ui_components/post_settings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../packages/core/sizes.dart';
import '../controllers/board_detail.dart';

final boardIdBeingEdited = Provider<int>((ref) => throw UnimplementedError());

class BoardEditorScreen extends HookConsumerWidget {
  const BoardEditorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (kDebugMode) print('===> BoardEditorScreen build()');

    final bId = ref.watch(boardIdBeingEdited);
    final boardData = ref.watch(boardDetailProvider(bId));

    return ProviderScope(
      overrides: [
        boardBeingEdited.overrideWithValue((boardData.value?.$2 ?? AACPost())),
      ],
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: TopToolbar(),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 왼쪽 페이지 패널
            Expanded(
              flex: 1, // 화면 비율
              child: PostSettings(),
            ),
            // 중앙 캔버스
            Expanded(
              flex: 4, // 화면 비율 (가장 넓게)
              child: Padding(
                padding: const EdgeInsets.only(
                  top: kPadding,
                  left: kPadding,
                  right: kPadding,
                ),
                // child: CanvasGridContainer(), // 여기에 DragTarget Grid가 들어갑니다.
                child: CanvasGrid(), // 여기에 DragTarget Grid가 들어갑니다.
              ),
            ),
            // 오른쪽 심볼 라이브러리
            Expanded(
              flex: 2, // 화면 비율
              // child: SymbolLibrary(), // 여기에 Draggable Symbol 목록이 들어갑니다.
              child: MediaLibrary(), // 여기에 Draggable Symbol 목록이 들어갑니다.
            ),
          ],
        ),
      ),
    );
  }
}

class TopToolbar extends HookConsumerWidget implements PreferredSizeWidget {
  const TopToolbar({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sWidth = MediaQuery.of(context).size.width;
    final sType = getSType(sWidth);

    return AppBar(
      toolbarHeight: 80.0,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black87,
      elevation: 1,
      titleSpacing: 0,
      title: sType.index >= 2
          ? Text(
              '의사소통판 만들기',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500),
            )
          : Icon(Icons.dashboard_customize_outlined),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding / 2.0),
          child: IconButton(
            onPressed: () {
              ref.invalidate(boardEditorProvider(ref.watch(boardBeingEdited)));
            },
            icon: Tooltip(
              message: '원래 의사소통판 내용으로 복귀: 편집된 내용 취소됨',
              child: Icon(Icons.settings_backup_restore_outlined),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding / 2.0),
          child: FilledButton.icon(
            onPressed: () {},
            icon: Icon(Icons.pause_outlined),
            label: sType.index >= 2 ? Text('임시 저장') : Text(''),
            style: FilledButton.styleFrom(
              foregroundColor: Colors.black87, // icon and text
              backgroundColor: Colors.grey[400], // background
              // disabledForegroundColor: Colors.grey.withOpacity(0.38),
              // disabledBackgroundColor: Colors.grey.withOpacity(0.12),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding / 2.0),
          child: FilledButton.icon(
            onPressed: () async {
              await ref
                  .read(
                    boardEditorProvider(ref.watch(boardBeingEdited)).notifier,
                  )
                  .publish();
              if (context.mounted) context.pop();
            },
            icon: Icon(Icons.done_outlined),
            label: sType.index >= 2 ? Text('저장 후 종료') : Text(''),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: kPadding / 2.0),
        //   child: IconButton(
        //     onPressed: () {
        //       context.pop();
        //     },
        //     icon: Tooltip(
        //       message: '편집을 중단하고 이전 화면으로 돌아가기',
        //       child: Icon(Icons.close_outlined, color: Colors.black87),
        //     ),
        //   ),
        // ),
      ],
    );
  }

  // Widget _buildToolButton(IconData icon, String label) {
  //   return Padding(
  //     padding: const EdgeInsets.all(kPadding / 2.0),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Icon(icon, color: Colors.black87),
  //         const SizedBox(height: kDSpace),
  //         Text(label, style: TextStyle(fontSize: 14, color: Colors.black87)),
  //       ],
  //     ),
  //   );
  // }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
