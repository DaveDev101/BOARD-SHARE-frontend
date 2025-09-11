import 'dart:ui' as ui;
// import 'dart:html' as html;
import 'package:web/web.dart' as web;
import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../packages/core/colors.dart';
import '../../../../packages/core/purchase.dart';
import '../../../../packages/core/sizes.dart';
import '../../models/aac_symbol.dart';

class SymbolTitleDownload extends HookConsumerWidget {
  const SymbolTitleDownload({
    super.key,
    required this.container,
    required AACSymbol symbol,
  }) : s = symbol;

  final GlobalKey container;
  final AACSymbol s;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedOption = useState(DownloadOption.none);
    final checkedIcon = Icon(Icons.check_circle, color: Colors.green, size: 24);
    final uncheckedIcon = Icon(
      Icons.circle_outlined,
      color: Colors.white,
      size: 24,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: kESpace * 2),

        // symbol title and author
        Text(
          s.symbolTitle ?? '',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: kSpace),
        Text(
          "만든 이: ${s.symbolSystem?.issuer}",
          style: TextStyle(fontSize: 14, color: Colors.white70),
        ),
        SizedBox(height: kESpace * 2),

        // license
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: EdgeInsets.all(12),
            width: 480.0,
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PNG 파일 포맷",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                Divider(color: Colors.white24),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        if (selectedOption.value ==
                            DownloadOption.subscription) {
                          selectedOption.value = DownloadOption.none;
                        } else {
                          selectedOption.value = DownloadOption.subscription;
                        }
                      },
                      icon: selectedOption.value == DownloadOption.subscription
                          ? checkedIcon
                          : uncheckedIcon,
                    ),
                    SizedBox(width: kSpace),
                    Text(
                      "구독 (Non-Commercial Use Only)",
                      style: TextStyle(color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      "매월 1,100 ~ 4,400원",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 4.0),
                    Tooltip(
                      message:
                          '구독 회원은 모든 상징과 의사소통판을 다운로드\n받아 사용할 수 있습니다.\n\n단, 상업적 용도로는 사용할 수\n없습니다.!',
                      child: Icon(Icons.help, color: kBgColor, size: 20.0),
                    ),
                  ],
                ),
                SizedBox(height: kSpace),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        if (selectedOption.value ==
                            DownloadOption.singlePurchase) {
                          selectedOption.value = DownloadOption.none;
                        } else {
                          selectedOption.value = DownloadOption.singlePurchase;
                        }
                      },
                      icon:
                          selectedOption.value == DownloadOption.singlePurchase
                          ? checkedIcon
                          : uncheckedIcon,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "단일 상징 구매\n(SingleRoyalty-free, commercial licenses)",
                      style: TextStyle(color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      "1,000원",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 4.0),
                    Tooltip(
                      message:
                          '본 상징을 다운로드 받아\n상업적 용도로 사용이 가능합니다.\n\n다른 상징은 다운로드 받을 수 없습니다!',
                      child: Icon(Icons.help, color: kBgColor, size: 20.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: kESpace * 2),

        // Download button
        ElevatedButton(
          onPressed: selectedOption.value != DownloadOption.none
              ? () async {
                  await _captureAndDownload(container, '${s.symbolTitle}.png');
                }
              : null,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black87,
            disabledBackgroundColor: Colors.grey[400],
            disabledForegroundColor: Colors.grey[600],
            fixedSize: const Size(320.0, 60.0),
            elevation: selectedOption.value != DownloadOption.none ? 4.0 : 0.0,
          ),
          child: Text(
            "이미지 다운로드 (PNG)",
            style: TextStyle(
              // color: Colors.black87,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: kESpace * 2),
      ],
    );
  }

  Future<void> _captureAndDownload(GlobalKey key, String fileName) async {
    // get the RenderRepaintBoundary of the widget to be captured
    RenderRepaintBoundary boundary =
        key.currentContext!.findRenderObject() as RenderRepaintBoundary;

    // capture image
    ui.Image image = await boundary.toImage(pixelRatio: 3.0);
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    if (byteData != null) {
      Uint8List pngBytes = byteData.buffer.asUint8List();

      // Blob and then URL
      // final blob = html.Blob([pngBytes], 'image/png');
      // final url = html.Url.createObjectUrlFromBlob(blob);
      final blob = web.Blob(
        [pngBytes.toJS].toJS,
        web.BlobPropertyBag(type: 'image/png'),
      );
      final url = web.URL.createObjectURL(blob);

      // AnchorElement creation and download (click)
      // final anchor = html.AnchorElement(href: url)
      //   ..setAttribute("download", fileName)
      //   ..click();
      // html.Url.revokeObjectUrl(url);

      // AnchorElement creation and download (click) using package:web
      // The HTMLAnchorElement is directly available under web.document.createElement
      final anchor = web.document.createElement('a') as web.HTMLAnchorElement
        ..href = url
        ..download = fileName; // Use the direct 'download' property

      web.document.body!.append(
        anchor,
      ); // Temporarily add to DOM to ensure click works reliably on all browsers
      anchor.click();
      anchor.remove(); // Clean up by removing the anchor

      web.URL.revokeObjectURL(url);
    }
  }
}
