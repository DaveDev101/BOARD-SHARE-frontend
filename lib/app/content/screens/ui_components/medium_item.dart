import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../packages/core/sizes.dart';
import '../../../../packages/ui_components/loading_image.dart';
// import '../../controllers/board_editor.dart';
import '../../models/media_model.dart';
// import 'canvas_grid.dart';

class MediumItem extends HookConsumerWidget {
  final MediaModel medium;
  final bool isDragging;
  final bool isTargeted;
  final double width;
  final double height;
  final bool isTextEditable;
  final Function? func;

  const MediumItem({
    super.key,
    required this.medium,
    this.isDragging = false,
    this.isTargeted = false,
    this.width = 120.0,
    this.height = 120.0,
    this.isTextEditable = false,
    this.func,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleController = useTextEditingController();
    useEffect(() {
      titleController.text = medium.title;
      return () {};
    }, [medium.title]);

    if (kDebugMode) {
      print('MediumItem: ${medium.title}');
    }

    return Material(
      // feedback 위젯은 Material 위젯으로 감싸야 함
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(4),
          color: isDragging
              ? Colors.blue.withAlpha(80)
              : isTargeted
              ? Colors.grey.withAlpha(80)
              : Colors.white,
        ),
        child: Stack(
          children: [
            LoadingImage(url: medium.imageUrl, width: width, height: height),
            Positioned(
              top: !isTextEditable ? kDSpace : -kDSpace,
              width: width,
              child: !isTextEditable
                  ? Text(
                      medium.title,
                      // style: TextStyle(
                      //   fontSize: double.parse(
                      //     data?.mFontSize ?? '17.0',
                      //   ),
                      // ),
                      textAlign: TextAlign.center,
                    )
                  : Focus(
                      onFocusChange: (hasFocus) {
                        if (!hasFocus && func != null) {
                          func!(titleController.text);
                        }
                      },
                      child: TextField(
                        // onChanged: (value) {
                        // if (value != s?.symbolTitle && !titleModified.value) {
                        //   titleModified.value = true;
                        // }
                        // },
                        // onEditingComplete: () {
                        //   if (func != null) func!(titleController.text);
                        // },
                        controller: titleController,
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.top,
                        // style: TextStyle(
                        //   color: titleColor.value,
                        //   fontSize: titleSize.value,
                        //   fontWeight: FontWeight.bold,
                        // ),
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
            ),
          ],
        ),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     // 실제로는 SVG나 Image.network/asset 사용
        //     Icon(Icons.widgets, size: 40),
        //     Text(medium.title),
        //   ],
        // ),
      ),
    );
  }
}
