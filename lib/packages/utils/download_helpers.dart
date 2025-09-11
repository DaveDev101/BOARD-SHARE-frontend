import 'dart:ui' as ui;
// import 'dart:html' as html;
import 'dart:js_interop';
import 'package:web/web.dart' as web;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';

Future<void> captureImageAndDownload({
  required GlobalKey key,
  required String fileName,
}) async {
  // get the RenderRepaintBoundary of the widget to be captured
  RenderRepaintBoundary boundary =
      key.currentContext!.findRenderObject() as RenderRepaintBoundary;

  // capture image
  ui.Image image = await boundary.toImage(pixelRatio: 3.0);
  ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
  if (byteData != null) {
    Uint8List pngBytes = byteData.buffer.asUint8List();

    // Blob and then URL
    final blob = web.Blob(
      [pngBytes.toJS].toJS,
      web.BlobPropertyBag(type: 'image/png'),
    );
    final url = web.URL.createObjectURL(blob);

    // AnchorElement creation and download (click)
    final anchor = web.document.createElement('a') as web.HTMLAnchorElement
      ..href = url
      ..download = fileName;

    web.document.body!.append(anchor);
    anchor.click();
    anchor.remove();

    web.URL.revokeObjectURL(url);
  }
}
