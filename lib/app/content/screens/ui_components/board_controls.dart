import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../packages/core/purchase.dart';
import '../../../../packages/core/sizes.dart';
import '../../../../packages/ui_components/license_board.dart';
import '../../../../packages/utils/datetime_format_helpers.dart';
import '../../models/aac_post.dart';

class BoardControls extends HookConsumerWidget {
  const BoardControls({
    super.key,
    required this.container,
    required AACPost post,
  }) : p = post;

  final GlobalKey container;
  final AACPost p;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFavorite = useState(false);
    final selectedOption = useState(DownloadOption.none);
    final checkedIcon = Icon(Icons.check_circle, color: Colors.green, size: 24);
    final uncheckedIcon = Icon(
      Icons.circle_outlined,
      color: Colors.white,
      // color: Colors.black87,
      size: 24,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: kESpace * 2),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              p.postTitle ?? '',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            IconButton(
              onPressed: () {
                isFavorite.value = !isFavorite.value;
              },
              icon: isFavorite.value
                  ? Icon(Icons.favorite, color: Colors.red)
                  : Icon(Icons.favorite_border, color: Colors.black87),
            ),
          ],
        ),
        const SizedBox(height: kDSpace),
        Text(
          '만든이: ${p.postAuthor ?? ''}',
          style: Theme.of(
            context,
          ).textTheme.labelLarge?.copyWith(color: Colors.grey[700]),
        ),
        const SizedBox(height: kDSpace),
        Text(
          formatRelativeTime(p.updatedAt),
          style: Theme.of(
            context,
          ).textTheme.labelLarge?.copyWith(color: Colors.grey[700]),
        ),
        if (p.description != null)
          Padding(
            padding: EdgeInsets.symmetric(vertical: kSpace),
            child: Divider(color: Colors.grey),
          ),
        Text(
          p.description ?? '',
          style: Theme.of(
            context,
          ).textTheme.labelLarge?.copyWith(color: Colors.grey[700]),
        ),
        if (p.description != null) const SizedBox(height: kSpace),
        const Divider(color: Colors.grey),
        const SizedBox(height: kSpace * 2),

        // License
        LicenseBoard(
          selectedOption: selectedOption,
          checkedIcon: checkedIcon,
          uncheckedIcon: uncheckedIcon,
        ),
        SizedBox(height: kESpace * 2),

        // 4 buttons
        SizedBox(
          width: double.infinity,
          child: LayoutBuilder(
            builder: (context, constraints) {
              final containerWidth = constraints.maxWidth;
              final buttonWidth = max(containerWidth / 4.0, 120.0);

              return Wrap(
                // alignment: WrapAlignment.spaceBetween,
                spacing: kDSpace,
                runSpacing: kDSpace,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // 버튼 배경
                      foregroundColor: Colors.black, // 텍스트/아이콘 색상
                      minimumSize: Size(buttonWidth, buttonWidth), // 버튼 크기
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4), // 모서리 둥글기
                        side: const BorderSide(color: Colors.grey), // 테두리
                      ),
                      elevation: 0, // Card처럼 그림자 없애고 싶으면 0
                    ),
                    onPressed: () {
                      if (kDebugMode) print("ElevatedButton tapped!");
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.open_in_full_outlined),
                        Text('전체화면'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // 버튼 배경
                      foregroundColor: Colors.black, // 텍스트/아이콘 색상
                      minimumSize: Size(buttonWidth, buttonWidth), // 버튼 크기
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4), // 모서리 둥글기
                        side: const BorderSide(color: Colors.grey), // 테두리
                      ),
                      elevation: 0, // Card처럼 그림자 없애고 싶으면 0
                    ),
                    onPressed: () {
                      if (kDebugMode) print("ElevatedButton tapped!");
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.qr_code), Text('QR 코드')],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // 버튼 배경
                      foregroundColor: Colors.black, // 텍스트/아이콘 색상
                      minimumSize: Size(buttonWidth, buttonWidth), // 버튼 크기
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4), // 모서리 둥글기
                        side: const BorderSide(color: Colors.grey), // 테두리
                      ),
                      elevation: 0, // Card처럼 그림자 없애고 싶으면 0
                    ),
                    onPressed: () {
                      if (kDebugMode) print("ElevatedButton tapped!");
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.file_download), Text('PDF')],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // 버튼 배경
                      foregroundColor: Colors.black, // 텍스트/아이콘 색상
                      minimumSize: Size(buttonWidth, buttonWidth), // 버튼 크기
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4), // 모서리 둥글기
                        side: const BorderSide(color: Colors.grey), // 테두리
                      ),
                      elevation: 0, // Card처럼 그림자 없애고 싶으면 0
                    ),
                    onPressed: () {
                      // if (kDebugMode) print("ElevatedButton tapped!");
                      // context.go('/content/boards/${p.id ?? 0}/editor');
                      context.push('/board-editor/${p.id ?? 0}');
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.app_registration_outlined),
                        Text('편집'),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),

        // ElevatedButton(
        //   onPressed: selectedOption.value != DownloadOption.none
        //       ? () async {
        //           // await _captureAndDownload(container, '${p.postTitle}.png');
        //         }
        //       : null,
        //   style: ElevatedButton.styleFrom(
        //     backgroundColor: Colors.white,
        //     foregroundColor: Colors.black87,
        //     disabledBackgroundColor: Colors.grey[400],
        //     disabledForegroundColor: Colors.grey[600],
        //     fixedSize: const Size(320.0, 60.0),
        //     elevation: selectedOption.value != DownloadOption.none ? 4.0 : 0.0,
        //   ),
        //   child: Text(
        //     "QR 코드 생성",
        //     style: TextStyle(
        //       // color: Colors.black87,
        //       fontSize: 16,
        //       fontWeight: FontWeight.w500,
        //     ),
        //   ),
        // ),
        // SizedBox(height: kESpace * 2),
        // ElevatedButton(
        //   onPressed: selectedOption.value != DownloadOption.none
        //       ? () async {
        //           // await _captureAndDownload(container, '${p.postTitle}.png');
        //         }
        //       : null,
        //   style: ElevatedButton.styleFrom(
        //     backgroundColor: Colors.white,
        //     foregroundColor: Colors.black87,
        //     disabledBackgroundColor: Colors.grey[400],
        //     disabledForegroundColor: Colors.grey[600],
        //     fixedSize: const Size(320.0, 60.0),
        //     elevation: selectedOption.value != DownloadOption.none ? 4.0 : 0.0,
        //   ),
        //   child: Text(
        //     "다운로드 (PDF)",
        //     style: TextStyle(
        //       // color: Colors.black87,
        //       fontSize: 16,
        //       fontWeight: FontWeight.w500,
        //     ),
        //   ),
        // ),
        // SizedBox(height: kESpace * 2),
        // ElevatedButton(
        //   onPressed: selectedOption.value != DownloadOption.none
        //       ? () async {
        //           // await _captureAndDownload(container, '${p.postTitle}.png');
        //         }
        //       : null,
        //   style: ElevatedButton.styleFrom(
        //     backgroundColor: Colors.white,
        //     foregroundColor: Colors.black87,
        //     disabledBackgroundColor: Colors.grey[400],
        //     disabledForegroundColor: Colors.grey[600],
        //     fixedSize: const Size(320.0, 60.0),
        //     elevation: selectedOption.value != DownloadOption.none ? 4.0 : 0.0,
        //   ),
        //   child: Text(
        //     "내 의사소통판으로 복제",
        //     style: TextStyle(
        //       // color: Colors.black87,
        //       fontSize: 16,
        //       fontWeight: FontWeight.w500,
        //     ),
        //   ),
        // ),
        // SizedBox(height: kESpace * 2),
      ],
    );
  }

  // Future<void> _captureAndDownload(GlobalKey key, String fileName) async {
  //   // get the RenderRepaintBoundary of the widget to be captured
  //   RenderRepaintBoundary boundary =
  //       key.currentContext!.findRenderObject() as RenderRepaintBoundary;
  //
  //   // capture image
  //   ui.Image image = await boundary.toImage(pixelRatio: 3.0);
  //   ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
  //   if (byteData != null) {
  //     Uint8List pngBytes = byteData.buffer.asUint8List();
  //
  //     // Blob and then URL
  //     final blob = html.Blob([pngBytes], 'image/png');
  //     final url = html.Url.createObjectUrlFromBlob(blob);
  //
  //     // AnchorElement creation and download (click)
  //     final anchor = html.AnchorElement(href: url)
  //       ..setAttribute("download", fileName)
  //       ..click();
  //     html.Url.revokeObjectUrl(url);
  //   }
  // }
}
