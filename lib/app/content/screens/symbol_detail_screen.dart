import 'dart:math' as math;
import 'dart:html' as html;
import 'dart:ui' as ui;

import 'package:boardshare/app/content/controllers/symbol_detail.dart';
import 'package:boardshare/app/content/models/aac_symbol.dart';
import 'package:boardshare/app/content/models/medium.dart';
import 'package:boardshare/packages/ui_components/loading_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../packages/core/portal_controller.dart';
import '../../../packages/core/sizes.dart';
import '../../../packages/ui_components/footer.dart';

final selectedSymbolId = Provider<int>((ref) => throw UnimplementedError());

const _orgAngle = 0.0;
const _orgSize = 360.0;
const _orgOffset = Offset(0, 0);
const _orgTOffsetY = 16.0;
const _orgTEditable = false;
const _orgTAlignment = TextAlign.center;
const _orgTColor = Colors.black87;
const _orgTSize = 32.0;
const _orgBg = Colors.white;
const _orgBr = Colors.black87;

final GlobalKey _previewContainer = GlobalKey();

class SymbolDetailScreen extends HookConsumerWidget {
  const SymbolDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sWidth = MediaQuery.of(context).size.width;
    final sHeight = MediaQuery.of(context).size.height;
    final horizontalPadding = (sWidth > kMaxWidth)
        ? (sWidth - kMaxWidth) / 2
        : 0.0;

    final sId = ref.watch(selectedSymbolId);
    final symbolData = ref.watch(symbolDetailProvider(sId));

    final imgAngle = useState(_orgAngle);
    final imgSize = useState(_orgSize);
    final imgOffset = useState(_orgOffset);

    final titleController = useTextEditingController();
    final titleModified = useState(false);
    final txtOffsetY = useState(_orgTOffsetY);
    final txtEditable = useState(_orgTEditable);
    final txtAlignment = useState(_orgTAlignment);
    final txtColor = useState(_orgTColor);
    final txtSize = useState(_orgTSize);

    final bgColor = useState(_orgBg);
    final borderColor = useState(_orgBr);

    // final makeTransparent = useState(false);

    void resetCustomization(String title) {
      imgAngle.value = _orgAngle;
      imgSize.value = _orgSize;
      imgOffset.value = _orgOffset;
      titleController.text = title;
      titleModified.value = false;
      txtOffsetY.value = _orgTOffsetY;
      txtEditable.value = _orgTEditable;
      txtAlignment.value = _orgTAlignment;
      txtColor.value = _orgTColor;
      txtSize.value = _orgTSize;
      bgColor.value = _orgBg;
      borderColor.value = _orgBr;
    }

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

        // symbol title
        if (!titleModified.value) {
          titleController.text = s.symbolTitle ?? '';
        }

        return Container(
          height: 1200,
          color: Colors.grey[200],
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 744,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // symbol
                      Container(
                        height: 688.0,
                        width: sWidth,
                        color: Colors.black87,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: horizontalPadding,
                          ),
                          child: Center(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(height: kESpace * 2),
                                      Container(
                                        color: Colors.grey[200],
                                        width: 608.0,
                                        height: 608.0,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(height: kESpace * 2),

                                            // symbol preview
                                            RepaintBoundary(
                                              key: _previewContainer,
                                              child: AACSymbolPreview(
                                                bgColor: bgColor,
                                                borderColor: borderColor,
                                                imgAngle: imgAngle,
                                                imgOffset: imgOffset,
                                                titleController:
                                                    titleController,
                                                titleModified: titleModified,
                                                titleOffsetY: txtOffsetY,
                                                titleEditable: txtEditable,
                                                titleAlignment: txtAlignment,
                                                titleColor: txtColor,
                                                titleSize: txtSize,
                                                sm: sm,
                                                imgSize: imgSize,
                                                s: s,
                                              ),
                                            ),
                                            SizedBox(height: kESpace),

                                            // text modifier, rotation & color controls
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(height: kESpace),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    const SizedBox(
                                                      width: kESpace * 4,
                                                    ),

                                                    // title modifier
                                                    DTitleModifier(
                                                      txtColor: txtColor,
                                                      txtSize: txtSize,
                                                      txtOffsetY: txtOffsetY,
                                                      txtAlignment:
                                                          txtAlignment,
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: kESpace),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    const SizedBox(
                                                      width: kESpace * 4,
                                                    ),

                                                    // symbol image rotation control
                                                    DRotationControl(
                                                      imgAngle: imgAngle,
                                                      imgSize: imgSize,
                                                    ),

                                                    const SizedBox(
                                                      width: kSpace * 2,
                                                    ),

                                                    // color picker
                                                    DColorPickerControl(
                                                      bgColor: bgColor,
                                                      borderColor: borderColor,
                                                    ),

                                                    const SizedBox(
                                                      width: kESpace * 2,
                                                    ),

                                                    // Reset button
                                                    IconButton(
                                                      icon: Icon(
                                                        Icons
                                                            .settings_backup_restore_outlined,
                                                      ),
                                                      onPressed: () {
                                                        resetCustomization(
                                                          s.symbolTitle ?? '',
                                                        );
                                                      },
                                                      iconSize: 24,
                                                      color: Colors.black54,
                                                      tooltip: "Reset",
                                                      style:
                                                          IconButton.styleFrom(
                                                            backgroundColor:
                                                                Colors.white,
                                                            shape:
                                                                CircleBorder(),
                                                          ),
                                                    ),

                                                    const Spacer(),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: kESpace * 4),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: kESpace * 2),
                                      // 아이콘 설명 및 구매 옵션
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
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white70,
                                        ),
                                      ),
                                      SizedBox(height: kSpace * 2),

                                      // 라이선스 옵션
                                      // Container(
                                      //   padding: EdgeInsets.all(12),
                                      //   decoration: BoxDecoration(
                                      //     color: Colors.grey[900],
                                      //     borderRadius:
                                      //         BorderRadius.circular(8),
                                      //   ),
                                      //   child: Column(
                                      //     crossAxisAlignment:
                                      //         CrossAxisAlignment.start,
                                      //     children: [
                                      //       Text("PNG & SVG icon formats",
                                      //           style: TextStyle(
                                      //               color: Colors.white,
                                      //               fontWeight:
                                      //                   FontWeight.bold)),
                                      //       Divider(color: Colors.white24),
                                      //       Row(
                                      //         children: [
                                      //           Icon(Icons.check_circle,
                                      //               color: Colors.green,
                                      //               size: 20),
                                      //           SizedBox(width: 8),
                                      //           Text("Unlimited icon downloads",
                                      //               style: TextStyle(
                                      //                   color: Colors.white)),
                                      //         ],
                                      //       ),
                                      //       SizedBox(height: 8),
                                      //       Row(
                                      //         children: [
                                      //           Icon(Icons.check_circle,
                                      //               color: Colors.green,
                                      //               size: 20),
                                      //           SizedBox(width: 8),
                                      //           Text(
                                      //               "Royalty-free, commercial licenses",
                                      //               style: TextStyle(
                                      //                   color: Colors.white)),
                                      //         ],
                                      //       ),
                                      //     ],
                                      //   ),
                                      // ),
                                      ElevatedButton(
                                        onPressed: () async {
                                          await captureAndDownload(
                                            _previewContainer,
                                            '${s.symbolTitle}.png',
                                          );
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
                      // Text(
                      //   "You may also like",
                      //   style: TextStyle(
                      //       fontSize: 18, fontWeight: FontWeight.bold),
                      // ),
                      // SizedBox(height: 8),
                    ],
                  ),
                ),
              ),

              if (s.symbolExcerpt != null && s.symbolExcerpt!.isNotEmpty)
                SliverToBoxAdapter(
                  child: Container(
                    width: sWidth,
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding,
                    ),
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
                                  side: BorderSide.none, // 테두리 제거
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
              // GridView를 활용한 유사 아이콘 목록
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
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
                        color: Colors.white,
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
              // Footer
              SliverToBoxAdapter(child: DFooter(dark: false)),
            ],
          ),
        );
      },
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

class DColorPickerControl extends HookConsumerWidget {
  const DColorPickerControl({
    super.key,
    required this.bgColor,
    required this.borderColor,
  });

  final ValueNotifier<ui.Color> bgColor;
  final ValueNotifier<ui.Color> borderColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final portalCtl = ref.watch(portalControllerProvider);

    // final isBgColorPickerVisible = useState(false);
    // final isBorderColorPickerVisible = useState(false);

    final recentColors = useState([Color(0xFFFFFFFF)]);
    final selectedColor = useState(Color(0xFFFFFFFF));

    final cControl = useTextEditingController.fromValue(
      TextEditingValue(text: '#00000000'),
    );
    final cFocusNode = useFocusNode();

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: kSpace),
            Text("배경과 테두리", style: TextStyle(fontSize: 16)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Background Color
            PortalTarget(
              // visible: isBgColorPickerVisible.value,
              visible: portalCtl.$3,
              anchor: Aligned(
                target: Alignment.topCenter,
                follower: Alignment.bottomCenter,
                offset: Offset(0, -1 * kSpace),
              ),
              // overlay widget (color palette)
              portalFollower: DColorPicker(
                title: '배경색',
                recentColors: recentColors,
                selectedColor: selectedColor,
                cControl: cControl,
                cFocusNode: cFocusNode,
                func: () {
                  bgColor.value = selectedColor.value;
                },
              ),

              // color picker button
              child: IconButton(
                icon: Icon(Icons.square, color: bgColor.value),
                onPressed: () {
                  // isBgColorPickerVisible.value = !isBgColorPickerVisible.value;
                  ref
                      .read(portalControllerProvider.notifier)
                      .toggleVisibility(3);
                  // if (isColorPickerVisible.value) {
                  // }
                  // if (bgColor.value == _orgBg) {
                  //   bgColor.value = Colors.white;
                  // } else if (bgColor.value == Colors.white) {
                  //   bgColor.value = Colors.lightBlueAccent;
                  // } else if (bgColor.value == Colors.lightBlueAccent) {
                  //   bgColor.value = _orgBg;
                  // }
                },
              ),
            ),
            Text("배경색", style: TextStyle(fontWeight: FontWeight.w300)),

            const SizedBox(width: kSpace * 2),

            // 테두리
            PortalTarget(
              // visible: isBorderColorPickerVisible.value,
              visible: portalCtl.$4,
              anchor: Aligned(
                target: Alignment.topCenter,
                follower: Alignment.bottomCenter,
                offset: Offset(0, -1 * kSpace),
              ),
              // overlay widget (color palette)
              portalFollower: DColorPicker(
                title: '테두리색',
                recentColors: recentColors,
                selectedColor: selectedColor,
                cControl: cControl,
                cFocusNode: cFocusNode,
                func: () {
                  borderColor.value = selectedColor.value;
                },
              ),

              child: IconButton(
                icon: Icon(Icons.crop_din, color: borderColor.value),
                onPressed: () {
                  // isBorderColorPickerVisible.value =
                  //     !isBorderColorPickerVisible.value;
                  ref
                      .read(portalControllerProvider.notifier)
                      .toggleVisibility(4);
                  // if (borderColor.value == _orgBr) {
                  //   borderColor.value = Colors.redAccent;
                  // } else if (borderColor.value == Colors.redAccent) {
                  //   borderColor.value = Colors.blueAccent;
                  // } else if (borderColor.value == Colors.blueAccent) {
                  //   borderColor.value = Colors.transparent;
                  // } else {
                  //   borderColor.value = Colors.white;
                  // }
                },
              ),
            ),
            Text("테두리", style: TextStyle(fontWeight: FontWeight.w300)),
          ],
        ),
      ],
    );
  }
}

// 미리 정의된 색상들
final List<Color> _paletteColors = [
  Color(0x00000000),
  Color(0xFF000000),
  Color(0xFF676767),
  Color(0xFF9B9B9B),
  Color(0xFFD3D3D3),
  Color(0xFFEFEFEF),
  Color(0xFFFFFFFF),
  Color(0xFFD32F2F),
  Color(0xFFF57C00),
  Color(0xFFFBC02D),
  Color(0xFF388E3C),
  Color(0xFF1976D2),
  Color(0xFF303F9F),
  Color(0xFF8E24AA),
  Color(0xFFFFCDD2),
  Color(0xFFFFE0B2),
  Color(0xFFFFF9C4),
  Color(0xFFC8E6C9),
  Color(0xFFBBDEFB),
  Color(0xFFC5CAE9),
  Color(0xFFE1BEE7),
];

class DColorPicker extends StatelessWidget {
  const DColorPicker({
    super.key,
    required this.title,
    required this.recentColors,
    required this.selectedColor,
    required this.cControl,
    required this.cFocusNode,
    required this.func,
  });

  final String title;
  final ValueNotifier<List<Color>> recentColors;
  final ValueNotifier<Color> selectedColor;
  final TextEditingController cControl;
  final FocusNode cFocusNode;
  final VoidCallback func;

  void _updateHue(Offset localPosition, Size size) {
    final center = size.center(Offset.zero);
    final dx = localPosition.dx - center.dx;
    final dy = localPosition.dy - center.dy;
    final angle = math.atan2(dy, dx);
    // 거리(반경)에 따라 채도, 명도 등을 계산할 수도 있음
    final hue = (angle * 180 / math.pi + 360) % 360;
    _updateColor(selectedColor.value.a, hue);
  }

  void _updateAlpha(Offset localPosition, Size size) {
    final dx = localPosition.dx.clamp(0, size.width);
    final alpha = dx / size.width; // 0~1 범위
    _updateColor(alpha, HSVColor.fromColor(selectedColor.value).hue);
  }

  void _updateColor(double alpha, double hue) {
    // 간단히 HSV로부터 색상을 구해보기
    // 여기서는 채도=1, 명도=1로 고정하고 Hue만 angle로 설정
    final pickedColor = HSVColor.fromAHSV(alpha, hue, 1.0, 1.0).toColor();

    selectedColor.value = pickedColor;
    cControl.text =
        '#${(pickedColor.a * 255).round().toRadixString(16).padLeft(2, '0')}${(pickedColor.r * 255).round().toRadixString(16).padLeft(2, '0')}${(pickedColor.g * 255).round().toRadixString(16).padLeft(2, '0')}${(pickedColor.b * 255).round().toRadixString(16).padLeft(2, '0')}';
    func();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: 420,
        padding: const EdgeInsets.all(12),
        color: Colors.white,
        child: Row(
          children: [
            // Color Value and Palette
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  // Icon Color Label + TextField
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // 왼쪽 circle
                      selectedColor.value == Colors.transparent
                          ? Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: selectedColor.value,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/imgs/transparent.png',
                                fit: BoxFit.cover,
                              ),
                            )
                          : Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: selectedColor.value,
                                shape: BoxShape.circle,
                              ),
                            ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextField(enabled: false, controller: cControl),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Recent Colors
                  // const Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Text(
                  //     'Recent Colors',
                  //     style: TextStyle(fontWeight: FontWeight.bold),
                  //   ),
                  // ),
                  // const SizedBox(height: 8),
                  // Row(
                  //   children: [
                  //     for (final c in recentColors.value)
                  //       GestureDetector(
                  //         onTap: () {
                  //           selectedColor.value = c;
                  //           cControl.text =
                  //               '#${(c.a * 255).round().toRadixString(16).padLeft(2, '0')}${(c.r * 255).round().toRadixString(16).padLeft(2, '0')}${(c.g * 255).round().toRadixString(16).padLeft(2, '0')}${(c.b * 255).round().toRadixString(16).padLeft(2, '0')}';
                  //           func();
                  //         },
                  //         child: Container(
                  //           width: 24,
                  //           height: 24,
                  //           margin: const EdgeInsets.only(right: 8),
                  //           color: c,
                  //         ),
                  //       )
                  //   ],
                  // ),
                  const SizedBox(height: kSpace * 2),

                  // Palette
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '팔렛트',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: kSpace),
                  SizedBox(
                    width: 180.0,
                    child: Wrap(
                      // spacing: 8,
                      // runSpacing: 8,
                      children: _paletteColors.map((c) {
                        return GestureDetector(
                          onTap: () {
                            selectedColor.value = c;
                            cControl.text =
                                '#${(c.a * 255).round().toRadixString(16).padLeft(2, '0')}${(c.r * 255).round().toRadixString(16).padLeft(2, '0')}${(c.g * 255).round().toRadixString(16).padLeft(2, '0')}${(c.b * 255).round().toRadixString(16).padLeft(2, '0')}';

                            // 최근 색상 목록 업데이트(중복 제거)
                            final previousColors = recentColors.value;
                            if (!previousColors.contains(c)) {
                              final newColors = [c, ...previousColors];
                              if (newColors.length > 5) {
                                // 필요 시 최대 개수 제한
                                newColors.removeLast();
                              }
                              recentColors.value = newColors;
                            }

                            func();
                          },
                          child: c == Colors.transparent
                              ? Image.asset(
                                  'assets/imgs/transparent.png',
                                  fit: BoxFit.cover,
                                  width: 24,
                                  height: 24,
                                )
                              : Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(color: c),
                                ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: kSpace * 2),
                ],
              ),
            ),
            const SizedBox(width: kESpace * 2),

            // Color Wheel & Slider
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 180,
                  height: 180,
                  child: LayoutBuilder(
                    builder: (_, constraints) {
                      final size = constraints.biggest;
                      return GestureDetector(
                        onPanDown: (details) {
                          _updateHue(details.localPosition, size);
                        },
                        onPanUpdate: (details) {
                          _updateHue(details.localPosition, size);
                        },
                        child: CustomPaint(
                          size: size,
                          painter: _ColorWheelPainter(),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: kSpace * 2),
                SizedBox(
                  width: 180,
                  height: 20,
                  child: LayoutBuilder(
                    builder: (_, constraints) {
                      final size = constraints.biggest;
                      return GestureDetector(
                        onPanDown: (details) =>
                            _updateAlpha(details.localPosition, size),
                        onPanUpdate: (details) =>
                            _updateAlpha(details.localPosition, size),
                        child: CustomPaint(
                          size: size,
                          painter: _AlphaSliderPainter(
                            alpha: selectedColor.value.a,
                            baseColor: selectedColor.value,
                            // alpha: widget.alpha,
                            // baseColor: widget.baseColor,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// 단순히 컬러 휠 형태만 그려주는 Painter
class _ColorWheelPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = size.shortestSide * 0.5;

    // 그라디언트를 이용해 원형 그라디언트(레인보우) 표현
    // 실제로는 훨씬 정교한 방법(HSV 변환 등)으로 그리거나
    // 이미지를 불러와서 그려도 됨
    final sweepGradient = SweepGradient(
      colors: const [
        Colors.red,
        Colors.yellow,
        Colors.green,
        Colors.cyan,
        Colors.blue,
        Color(0xFFFF00FF),
        Colors.red,
      ],
    );

    final paint = Paint()
      ..shader = sweepGradient.createShader(
        Rect.fromCircle(center: center, radius: radius),
      );

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(_ColorWheelPainter oldDelegate) => false;
}

/// 투명도(0.0 ~ 1.0) 범위를 나타내는 그라디언트 + 썸(Thumb)을 직접 그려주는 Painter
class _AlphaSliderPainter extends CustomPainter {
  final double alpha;
  final Color baseColor;

  _AlphaSliderPainter({required this.alpha, required this.baseColor});

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;

    // 배경(투명 ~ 불투명) 그라디언트
    final gradient = LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [baseColor.withAlpha(1), baseColor.withAlpha(255)],
    );

    final paint = Paint()..shader = gradient.createShader(rect);

    // 둥근 모서리 슬라이더 바
    final rRect = RRect.fromRectAndRadius(rect, const Radius.circular(8));
    canvas.drawRRect(rRect, paint);
    //
    // // 슬라이더 바 외곽선
    // final borderPaint = Paint()
    //   ..color = Colors.grey
    //   ..style = PaintingStyle.stroke
    //   ..strokeWidth = 1.5;
    // canvas.drawRRect(rRect, borderPaint);

    // 썸(Thumb) 그리기
    // final thumbX = alpha * size.width;
    // final thumbCenter = Offset(thumbX, size.height / 2);
    // const thumbRadius = 10.0;

    // 썸 내부
    // final thumbPaint = Paint()..color = Colors.white;
    // canvas.drawCircle(thumbCenter, thumbRadius, thumbPaint);

    // 썸 외곽선
    // final thumbBorderPaint = Paint()
    //   ..color = Colors.black
    //   ..style = PaintingStyle.stroke
    //   ..strokeWidth = 2;
    // canvas.drawCircle(thumbCenter, thumbRadius, thumbBorderPaint);
  }

  @override
  bool shouldRepaint(_AlphaSliderPainter oldDelegate) {
    return oldDelegate.alpha != alpha || oldDelegate.baseColor != baseColor;
  }
}

class DRotationControl extends StatelessWidget {
  const DRotationControl({
    super.key,
    required this.imgAngle,
    required this.imgSize,
  });

  final ValueNotifier<double> imgAngle;
  final ValueNotifier<double> imgSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: kSpace),
            Text("이미지", style: TextStyle(fontSize: 16)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Rotation buttons
            IconButton(
              icon: Icon(Icons.rotate_right),
              onPressed: () {
                var previousValue = imgAngle.value;
                imgAngle.value = previousValue + math.pi / 8;
              },
            ),
            IconButton(
              icon: Icon(Icons.rotate_left),
              onPressed: () {
                var previousValue = imgAngle.value;
                imgAngle.value = previousValue - math.pi / 8;
              },
            ),

            // size buttons
            IconButton(
              icon: Icon(Icons.zoom_in),
              onPressed: (imgSize.value >= 360)
                  ? null
                  : () {
                      var previousValue = imgSize.value;
                      if (previousValue >= 360.0) {
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   SnackBar(
                        //     content: Text("더 이상 확대할 수 없습니다!"),
                        //     duration: Duration(seconds: 2),
                        //   ),
                        // );
                        return;
                      }

                      imgSize.value = previousValue + 20.0;
                    },
            ),
            IconButton(
              icon: Icon(Icons.zoom_out),
              onPressed: (imgSize.value <= 200.0)
                  ? null
                  : () {
                      var previousValue = imgSize.value;
                      if (previousValue <= 200.0) {
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   SnackBar(
                        //     content: Text("더 이상 축소할 수 없습니다!"),
                        //     duration: Duration(seconds: 2),
                        //   ),
                        // );
                        return;
                      }

                      imgSize.value = previousValue - 20.0;
                    },
            ),
          ],
        ),
      ],
    );
  }
}

class DTitleModifier extends HookConsumerWidget {
  const DTitleModifier({
    super.key,
    required this.txtColor,
    required this.txtSize,
    required this.txtOffsetY,
    required this.txtAlignment,
  });

  final ValueNotifier<Color> txtColor;
  final ValueNotifier<double> txtSize;
  final ValueNotifier<double> txtOffsetY;
  final ValueNotifier<TextAlign> txtAlignment;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final portalCtl = ref.watch(portalControllerProvider);

    final recentColors = useState([Color(0xFFFFFFFF)]);
    final selectedColor = useState(Color(0xFFFFFFFF));

    final cControl = useTextEditingController.fromValue(
      TextEditingValue(text: '#00000000'),
    );
    final cFocusNode = useFocusNode();

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: kSpace),
            Text("어휘 (상징 제목)", style: TextStyle(fontSize: 16)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // text color picker
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Background Color
                PortalTarget(
                  // visible: isBgColorPickerVisible.value,
                  visible: portalCtl.$5,
                  anchor: Aligned(
                    target: Alignment.topCenter,
                    follower: Alignment.bottomCenter,
                    offset: Offset(0, kSpace),
                  ),
                  // overlay widget (color palette)
                  portalFollower: DColorPicker(
                    title: '글자색',
                    recentColors: recentColors,
                    selectedColor: selectedColor,
                    cControl: cControl,
                    cFocusNode: cFocusNode,
                    func: () {
                      // bgColor.value = selectedColor.value;
                      txtColor.value = selectedColor.value;
                    },
                  ),

                  // color picker button
                  child: IconButton(
                    icon: Icon(Icons.square, color: txtColor.value),
                    onPressed: () {
                      ref
                          .read(portalControllerProvider.notifier)
                          .toggleVisibility(5);
                    },
                  ),
                ),
                Text("글자색", style: TextStyle(fontWeight: FontWeight.w300)),
              ],
            ),
            const SizedBox(width: kSpace * 2),

            // text size
            IconButton(
              icon: Icon(Icons.text_fields, size: 24.0),
              onPressed: (txtSize.value <= 16.0)
                  ? null
                  : () {
                      var previousValue = txtSize.value;
                      if (previousValue >= 16.0) {
                        txtSize.value = previousValue - 2.0;
                      }
                      // imgAngle.value = previousValue - math.pi / 8;
                    },
            ),
            IconButton(
              icon: Icon(Icons.format_size, size: 24.0),
              onPressed: (txtSize.value >= 32.0)
                  ? null
                  : () {
                      var previousValue = txtSize.value;
                      if (previousValue <= 32.0) {
                        txtSize.value = previousValue + 2.0;
                      }
                      // imgAngle.value = previousValue - math.pi / 8;
                    },
            ),
            const SizedBox(width: kSpace * 2),

            // text alignment
            IconButton(
              icon: Icon(Icons.format_align_left, size: 24.0),
              onPressed: () {
                txtAlignment.value = TextAlign.start;
              },
            ),
            IconButton(
              icon: Icon(Icons.format_align_center, size: 24.0),
              onPressed: () {
                txtAlignment.value = TextAlign.center;
              },
            ),
            IconButton(
              icon: Icon(Icons.format_align_right, size: 24.0),
              onPressed: () {
                txtAlignment.value = TextAlign.end;
              },
            ),
            const SizedBox(width: kSpace * 2),

            // move vertically (offset Y)
            IconButton(
              icon: Icon(Icons.north, size: 24.0),
              onPressed: (txtOffsetY.value <= 16.0)
                  ? null
                  : () {
                      var previousValue = txtOffsetY.value;
                      if (previousValue > 16.0) {
                        txtOffsetY.value = previousValue - 20.0;
                      }
                    },
            ),
            IconButton(
              icon: Icon(Icons.south, size: 24.0),
              onPressed: (txtOffsetY.value >= 280.0)
                  ? null
                  : () {
                      var previousValue = txtOffsetY.value;
                      if (previousValue < 280.0) {
                        txtOffsetY.value = previousValue + 20.0;
                      }
                    },
            ),
            const SizedBox(width: kSpace * 2),
          ],
        ),
      ],
    );
  }
}

class AACSymbolPreview extends ConsumerWidget {
  const AACSymbolPreview({
    super.key,
    required this.bgColor,
    required this.borderColor,
    required this.imgAngle,
    required this.imgOffset,
    required this.sm,
    required this.imgSize,
    required this.s,
    required this.titleOffsetY,
    required this.titleController,
    required this.titleModified,
    required this.titleEditable,
    required this.titleAlignment,
    required this.titleColor,
    required this.titleSize,
  });

  final ValueNotifier<ui.Color> bgColor;
  final ValueNotifier<ui.Color> borderColor;
  final ValueNotifier<double> imgAngle;
  final ValueNotifier<Offset> imgOffset;
  final Medium? sm;
  final ValueNotifier<double> imgSize;
  final AACSymbol? s;
  final ValueNotifier<double> titleOffsetY;
  final TextEditingController titleController;
  final ValueNotifier<bool> titleModified;
  final ValueNotifier<bool> titleEditable;
  final ValueNotifier<TextAlign> titleAlignment;
  final ValueNotifier<Color> titleColor;
  final ValueNotifier<double> titleSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final portalCtl = ref.watch(portalControllerProvider);

    return Container(
      width: _orgSize,
      height: _orgSize,
      decoration: BoxDecoration(
        color: bgColor.value,
        border: Border.all(color: borderColor.value, width: 8.0),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Transform.rotate(
              alignment: Alignment(0, 0.2),
              angle: imgAngle.value,
              child: GestureDetector(
                onPanUpdate: (DragUpdateDetails details) {
                  imgOffset.value += details.delta;
                },
                child: Transform.translate(
                  offset: imgOffset.value,
                  child: LoadingImage(
                    url: sm?.mediumUrl ?? '',
                    width: imgSize.value,
                    height: imgSize.value,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: titleOffsetY.value,
            width: 352.0,
            height: 52.0,
            child: Row(
              children: [
                Spacer(),
                SizedBox(
                  width: 336.0,
                  child: TextField(
                    onChanged: (value) {
                      if (value != s?.symbolTitle && !titleModified.value) {
                        titleModified.value = true;
                      }
                    },
                    controller: titleController,
                    textAlign: titleAlignment.value,
                    textAlignVertical: TextAlignVertical.top,
                    style: TextStyle(
                      color: titleColor.value,
                      fontSize: titleSize.value,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
