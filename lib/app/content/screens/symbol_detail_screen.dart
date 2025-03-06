import 'dart:math' as math;
import 'dart:html' as html;
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:boardshare/app/content/controllers/symbol_detail.dart';
import 'package:boardshare/packages/ui_components/loading_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../packages/core/sizes.dart';

final selectedSymbolId = Provider<int>((ref) => throw UnimplementedError());

const _orgAngle = 0.0;
const _orgSize = 360.0;
final _orgBg = Colors.transparent;
final _orgBr = Colors.transparent;

final GlobalKey _previewContainer = GlobalKey();

class SymbolDetailScreen extends HookConsumerWidget {
  const SymbolDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sWidth = MediaQuery.of(context).size.width;
    final sHeight = MediaQuery.of(context).size.height;
    final horizontalPadding =
        (sWidth > kMaxWidth) ? (sWidth - kMaxWidth) / 2 : 0.0;

    final sId = ref.watch(selectedSymbolId);
    final symbolData = ref.watch(SymbolDetailProvider(sId));

    final imgAngle = useState(_orgAngle);
    final imgSize = useState(_orgSize);
    final bgColor = useState(_orgBg);
    final borderColor = useState(_orgBr);

    final makeTransparent = useState(false);

    void resetCustomization() {
      imgAngle.value = _orgAngle;
      imgSize.value = _orgSize;
      bgColor.value = _orgBg;
      borderColor.value = _orgBr;
    }

    return symbolData.when(
      data: (data) {
        final s = data.$2;
        final sm = s?.medium;

        if (data.$1 != "SUCCESS" ||
            s == null ||
            sm == null ||
            sm.mediumUrl == null) {
          return Container(
            // TODO: implement no data
            child: Text('NO SUCH SYMBOL!!!'),
          );
        }

        return SingleChildScrollView(
          child: Container(
            height: 1200,
            color: Colors.grey[200],
            // makeTransparent.value ? Colors.transparent : Colors.grey[200],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // symbol
                Container(
                  height: 600.0,
                  width: sWidth,
                  color: Colors.black87,
                  // makeTransparent.value
                  //     ? Colors.transparent
                  //     : Colors.black87,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: horizontalPadding),
                    child: Center(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              color: Colors.grey[200],
                              // makeTransparent.value
                              //     ? Colors.transparent
                              //     : Colors.grey[200],
                              width: 520.0,
                              height: 520.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(height: kESpace),

                                  // symbol image
                                  RepaintBoundary(
                                    key: _previewContainer,
                                    child: Container(
                                      width: 360,
                                      height: 360.0,
                                      decoration: BoxDecoration(
                                        color: bgColor.value,
                                        border: Border.all(
                                          color: borderColor.value,
                                          width: 8.0,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Center(
                                            child: Transform.rotate(
                                              angle: imgAngle.value,
                                              child: LoadingImage(
                                                url: sm.mediumUrl!,
                                                width: imgSize.value,
                                                height: imgSize.value,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 16.0,
                                            width: 360.0,
                                            child: Text(
                                              s.symbolTitle ?? '',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 32.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: kESpace),

                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // title for customizing control section
                                      // Row(
                                      //   mainAxisAlignment:
                                      //       MainAxisAlignment.start,
                                      //   crossAxisAlignment:
                                      //       CrossAxisAlignment.start,
                                      //   children: [
                                      //     const SizedBox(width: kESpace * 2),
                                      //     Text(
                                      //       "상징을 변경해 보세요",
                                      //       style: TextStyle(
                                      //           fontSize: 16,
                                      //           fontWeight: FontWeight.w500),
                                      //     ),
                                      //   ],
                                      // ),
                                      const SizedBox(height: kESpace * 2),

                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const SizedBox(width: kESpace * 2),

                                          // symbol rotation
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "이미지",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w200),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  // Icon preview
                                                  // InkWell(
                                                  //   onTap: () {},
                                                  //   child: Container(
                                                  //     width: 24,
                                                  //     height: 24,
                                                  //     decoration: BoxDecoration(
                                                  //       color: Colors.black,
                                                  //       // shape: _isCircle
                                                  //       //     ? BoxShape.circle
                                                  //       //     : BoxShape.rectangle,
                                                  //       // borderRadius: _isCircle
                                                  //       //     ? null
                                                  //       //     : BorderRadius.circular(4),
                                                  //     ),
                                                  //   ),
                                                  // ),
                                                  // const SizedBox(
                                                  //     width: kSpace * 2),

                                                  // Rotation buttons
                                                  // IconButton(
                                                  //   icon:
                                                  //       Icon(Icons.rotate_left),
                                                  //   onPressed: () {},
                                                  //   // setState(() => _rotation -= 0.1),
                                                  // ),
                                                  IconButton(
                                                      icon: Icon(
                                                          Icons.rotate_right),
                                                      onPressed: () {
                                                        var previousValue =
                                                            imgAngle.value;
                                                        imgAngle.value =
                                                            previousValue +
                                                                math.pi / 8;
                                                      }
                                                      // setState(() => _rotation += 0.1),
                                                      ),

                                                  // move buttons
                                                  // IconButton(
                                                  //   icon:
                                                  //       Icon(Icons.swap_horiz),
                                                  //   onPressed: () {},
                                                  // ),
                                                  // IconButton(
                                                  //   icon: Icon(Icons.swap_vert),
                                                  //   onPressed: () {},
                                                  // ),

                                                  // size buttons
                                                  IconButton(
                                                    icon: Icon(Icons.zoom_in),
                                                    onPressed: () {
                                                      var previousValue =
                                                          imgSize.value;
                                                      if (previousValue >=
                                                          360.0) {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                                "더 이상 확대할 수 없습니다!"),
                                                            duration: Duration(
                                                                seconds: 2),
                                                          ),
                                                        );
                                                        return;
                                                      }

                                                      imgSize.value =
                                                          previousValue + 20.0;
                                                    },
                                                  ),
                                                  IconButton(
                                                    icon: Icon(Icons.zoom_out),
                                                    onPressed: () {
                                                      var previousValue =
                                                          imgSize.value;
                                                      if (previousValue <=
                                                          120.0) {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                                "더 이상 축소할 수 없습니다!"),
                                                            duration: Duration(
                                                                seconds: 2),
                                                          ),
                                                        );

                                                        return;
                                                      }

                                                      imgSize.value =
                                                          previousValue - 20.0;
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),

                                          const SizedBox(width: kSpace * 2),

                                          // Background options
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "배경과 테두리",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w200),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  // Background color
                                                  // InkWell(
                                                  //   onTap: () {},
                                                  //   // onTap: () => setState(() {
                                                  //   //   _backgroundColor =
                                                  //   //       _backgroundColor == Colors.red
                                                  //   //           ? Colors.transparent
                                                  //   //           : Colors.red;
                                                  //   // }),
                                                  //   child: Container(
                                                  //     width: 24,
                                                  //     height: 24,
                                                  //     decoration: BoxDecoration(
                                                  //       color: Colors.red,
                                                  //       // borderRadius:
                                                  //       //     BorderRadius.circular(
                                                  //       //         4),
                                                  //       // border:
                                                  //       //     _backgroundColor == Colors.red
                                                  //       //         ? Border.all(
                                                  //       //             color: Colors.black,
                                                  //       //             width: 2)
                                                  //       //         : null,
                                                  //     ),
                                                  //   ),
                                                  // ),

                                                  IconButton(
                                                    icon: Icon(Icons.square),
                                                    onPressed: () {
                                                      if (bgColor.value ==
                                                          _orgBg) {
                                                        bgColor.value =
                                                            Colors.white;
                                                      } else if (bgColor
                                                              .value ==
                                                          Colors.white) {
                                                        bgColor.value = Colors
                                                            .lightBlueAccent;
                                                      } else if (bgColor
                                                              .value ==
                                                          Colors
                                                              .lightBlueAccent) {
                                                        bgColor.value = _orgBg;
                                                      }
                                                    },
                                                  ),

                                                  const SizedBox(
                                                      width: kSpace * 2),

                                                  // check box
                                                  InkWell(
                                                    onTap: () {
                                                      if (borderColor.value ==
                                                          _orgBr) {
                                                        borderColor.value =
                                                            Colors.black87;
                                                      } else if (borderColor
                                                              .value ==
                                                          Colors.black87) {
                                                        borderColor.value =
                                                            Colors.redAccent;
                                                      } else if (borderColor
                                                              .value ==
                                                          Colors.redAccent) {
                                                        borderColor.value =
                                                            _orgBr;
                                                      }
                                                    },
                                                    // onTap: () => setState(
                                                    //     () => _isCircle = !_isCircle),
                                                    child: Row(
                                                      children: [
                                                        Icon(Icons.crop_din,
                                                            size: 20,
                                                            color:
                                                                Colors.black54),
                                                        const SizedBox(
                                                            width: 4),
                                                        Text("테두리"),
                                                        // if (_isCircle)
                                                        //   Icon(Icons.close,
                                                        //       size: 16, color: Colors.grey),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),

                                          const SizedBox(width: kESpace * 2),

                                          // Reset button
                                          IconButton(
                                            icon: Icon(Icons
                                                .settings_backup_restore_outlined),
                                            onPressed: resetCustomization,
                                            iconSize: 24,
                                            color: Colors.black54,
                                            tooltip: "Reset",
                                            style: IconButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              shape: CircleBorder(),
                                            ),
                                          ),

                                          const Spacer(),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: kESpace * 4),
                            Column(
                              children: [
                                SizedBox(height: kESpace),
                                // 아이콘 설명 및 구매 옵션
                                Text(
                                  s.symbolTitle ?? '',
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: kSpace),
                                Text(
                                  "만든 이: ${s.symbolSystem?.Issuer}",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white70),
                                ),
                                SizedBox(height: kSpace * 2),

                                // 라이선스 옵션
                                Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[900],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("PNG & SVG icon formats",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                      Divider(color: Colors.white24),
                                      Row(
                                        children: [
                                          Icon(Icons.check_circle,
                                              color: Colors.green, size: 20),
                                          SizedBox(width: 8),
                                          Text("Unlimited icon downloads",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                      SizedBox(height: 8),
                                      Row(
                                        children: [
                                          Icon(Icons.check_circle,
                                              color: Colors.green, size: 20),
                                          SizedBox(width: 8),
                                          Text(
                                              "Royalty-free, commercial licenses",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                                ElevatedButton(
                                  onPressed: () async {
                                    await captureAndDownload(
                                        _previewContainer, 'capture.png');
                                  },
                                  child: Text("이미지 다운로드 (PNG)"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: kESpace),

                // 비슷한 아이콘 리스트
                Text(
                  "You may also like",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),

                // GridView를 활용한 유사 아이콘 목록
                Expanded(
                  child: GridView.builder(
                    padding:
                        EdgeInsets.symmetric(horizontal: horizontalPadding),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: 100, // 비슷한 아이콘 개수
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(Icons.notifications,
                            size: 40, color: Colors.black),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
      error: (err, stack) => Text('$err'),
      loading: () => SizedBox(
        height: sHeight,
        child: Center(child: const CircularProgressIndicator()),
      ),
    );
  }

  Future<void> captureAndDownload(GlobalKey key, String fileName) async {
    // 캡처할 widget의 RenderRepaintBoundary 얻기
    RenderRepaintBoundary boundary =
        key.currentContext!.findRenderObject() as RenderRepaintBoundary;
    // 이미지 캡처 (pixelRatio는 원하는 해상도로 조정)
    ui.Image image = await boundary.toImage(pixelRatio: 3.0);
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    if (byteData != null) {
      Uint8List pngBytes = byteData.buffer.asUint8List();
      // Blob 생성 후 URL 생성
      final blob = html.Blob([pngBytes], 'image/png');
      final url = html.Url.createObjectUrlFromBlob(blob);
      // 다운로드를 위한 AnchorElement 생성 및 자동 클릭
      final anchor = html.AnchorElement(href: url)
        ..setAttribute("download", fileName)
        ..click();
      html.Url.revokeObjectUrl(url);
    }
  }
}
