import 'package:boardshare/app/content/screens/ui_components/symbol_modification.dart';
import 'package:boardshare/packages/core/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_portal/flutter_portal.dart';

import '../../../../packages/core/sizes.dart';
import '../../controllers/board_editor.dart';
import 'canvas_grid.dart';

final _formKey = GlobalKey<FormState>();
const _colsMin = 1.0;
const _colsMax = 10.0;
double _rowsMin = 1.0;
const _rowsMax = 10.0;
const _dCols = 4;
const _dRows = 5;
int _cols = _dCols;
int _rows = _dRows;

class PostSettings extends HookConsumerWidget {
  const PostSettings({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final board = ref.watch(boardBeingEdited);
    final boardData = ref.watch(boardEditorProvider(board));

    final titleController = useTextEditingController();
    // final excerptController = useTextEditingController();
    final descController = useTextEditingController();
    // final colsController = useTextEditingController();
    // final rowsController = useTextEditingController();
    final bgColorController = useTextEditingController();
    // final mBgColorController = useTextEditingController();
    // final mFontSizeController = useTextEditingController();

    // final cols = useState(_dCols);
    // final rows = useState(_dRows);

    final isBgColorPickerVisible = useState(false);
    final cFocusNode = useFocusNode();
    final recentColors = useState([Color(0xFFFFFFFF)]);
    final selectedColor = useState(Color(0xFFFFFFFF));

    useEffect(() {
      if (kDebugMode) print('boardData: ${boardData.gridSize}');

      titleController.text = boardData.postTitle;
      descController.text = boardData.description ?? '';
      _cols = int.parse(
        boardData.gridSize?.split(' by ').first ?? _dCols.toString(),
      );
      _rows = int.parse(
        boardData.gridSize?.split(' by ').last ?? _dRows.toString(),
      );
      bgColorController.text =
          (boardData.bgColor?.toARGB32() ?? Colors.white.toARGB32())
              .toRadixString(16)
              .substring(2)
              .padLeft(6, '0');
      return () {};
    }, [boardData]);

    useEffect(() {
      if (kDebugMode) print('boardData.gridSize: ${boardData.gridSize}');

      _cols = int.parse(
        boardData.gridSize?.split(' by ').first ?? _dCols.toString(),
      );
      _rows = int.parse(
        boardData.gridSize?.split(' by ').last ?? _dRows.toString(),
      );
      bgColorController.text =
          (boardData.bgColor?.toARGB32() ?? Colors.white.toARGB32())
              .toRadixString(16)
              .substring(2)
              .padLeft(6, '0');
      return () {};
    }, [boardData.gridSize, boardData.bgColor]);

    void changeGridSize({int? cols, int? rows}) {
      if (cols != null) _cols = cols;
      if (rows != null) _rows = rows;

      ref
          .read(boardEditorProvider(board).notifier)
          .updateGridSize(cols: _cols, rows: _rows);
    }

    void changeBgColor() {
      ref
          .read(boardEditorProvider(board).notifier)
          .updateBgColor(hexToColor(bgColorController.text));
    }

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => isBgColorPickerVisible.value = false,
      child: Container(
        padding: const EdgeInsets.all(kPadding),
        color: const Color(0xFFF0F0F0),
        height: double.infinity,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              // children: List.generate(100, (index) => Text(index.toString())),
              children: [
                SizedBox(height: kESpace * 2),

                // field #1 board title
                Text('제목', style: TextStyle(fontWeight: FontWeight.bold)),
                Focus(
                  onFocusChange: (hasFocus) {
                    if (!hasFocus) {
                      ref
                          .read(boardEditorProvider(board).notifier)
                          .updateTitle(titleController.text);
                    }
                  },
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: titleController,
                    decoration: InputDecoration(hintText: '제목'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '제목을 입력하세요.';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: kESpace * 2),

                // field #2 grid size
                Text('의사소통판 크기', style: TextStyle(fontWeight: FontWeight.bold)),
                _buildSliderControls(_cols, _rows, changeGridSize),
                SizedBox(height: kESpace),

                // field #3 background color
                Text('배경색', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: kESpace * 2),
                Row(
                  children: [
                    PortalTarget(
                      visible: isBgColorPickerVisible.value,
                      // visible: portalCtl.$3,
                      anchor: Aligned(
                        target: Alignment.bottomLeft,
                        follower: Alignment.topLeft,
                        offset: Offset(0, -1 * kSpace),
                      ),
                      // overlay widget (color palette)
                      portalFollower: DColorPicker(
                        title: '배경색',
                        recentColors: recentColors,
                        selectedColor: selectedColor,
                        cControl: bgColorController,
                        cFocusNode: cFocusNode,
                        func: () {
                          // bgColor.value = selectedColor.value;
                          changeBgColor();
                          // isBgColorPickerVisible.value = false;
                        },
                      ),

                      // color picker button
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.square,
                              color: boardData.bgColor,
                              size: 32.0,
                            ),
                            onPressed: () {
                              isBgColorPickerVisible.value =
                                  !isBgColorPickerVisible.value;
                            },
                          ),
                          // const SizedBox(width: kDSpace),
                          Text(bgColorController.text.toUpperCase()),
                        ],
                      ),
                    ),
                    // TextFormField(
                    //   readOnly: true,
                    //   autovalidateMode: AutovalidateMode.onUserInteraction,
                    //   controller: bgColorController,
                    //   decoration: InputDecoration(hintText: '배경색'),
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return '배경색을 선택하세요.';
                    //     }
                    //     return null;
                    //   },
                    //   // onFieldSubmitted: (value) {
                    //   //   changeBgColor();
                    //   // },
                    // ),
                  ],
                ),

                // field #4 description
                Text('설명', style: TextStyle(fontWeight: FontWeight.bold)),
                Focus(
                  onFocusChange: (hasFocus) {
                    if (!hasFocus) {
                      ref
                          .read(boardEditorProvider(board).notifier)
                          .updateDescription(descController.text);
                    }
                  },
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: descController,
                    decoration: InputDecoration(hintText: '의사소통판 설명'),
                    maxLines: 5,
                    // keyboardType: TextInputType.number,
                    // inputFormatters: <TextInputFormatter>[
                    //   FilteringTextInputFormatter.digitsOnly,
                    // ],
                    // validator: (String? value) {
                    //   if (value == null || value.isEmpty) {
                    //     return '값을 입력해주세요.';
                    //   }
                    //   // 정규식을 사용하여 입력값이 숫자로만 구성되었는지 확인
                    //   final isDigitsOnly = RegExp(r'^[0-9]+$').hasMatch(value);
                    //   if (!isDigitsOnly) {
                    //     return '숫자만 입력할 수 있습니다.';
                    //   }
                    //   return null; // null을 반환하면 유효성 검사 통과
                    // },
                  ),
                ),
                SizedBox(height: kESpace),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// sliders for grid size control
Widget _buildSliderControls(int cols, int rows, Function func) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: kESpace),

      Text(
        '$cols열 ✕ $rows행',
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      const SizedBox(height: kDSpace),

      // --- Columns slider ---
      Slider(
        value: cols.toDouble(),
        min: _colsMin,
        max: _colsMax,
        divisions: (_colsMax - _colsMin).toInt(),
        label: cols.toString(),
        onChanged: (double value) {
          if (kDebugMode) print('slider value: $value');
          cols = value.toInt();
          func(cols: cols, rows: null);
        },
      ),

      // --- Rows slider ---
      Slider(
        value: rows.toDouble(),
        min: _rowsMin,
        max: _rowsMax,
        divisions: (_rowsMax - _rowsMin).toInt(),
        label: rows.toString(),
        onChanged: (double value) {
          rows = value.toInt();
          func(cols: null, rows: rows);
        },
      ),
    ],
  );
}
