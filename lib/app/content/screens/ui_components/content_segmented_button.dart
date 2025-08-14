import 'package:boardshare/packages/core/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ContentSegmentedButton extends StatelessWidget {
  const ContentSegmentedButton({
    super.key,
    required this.horizontalPadding,
    required this.segments,
    required this.selectedIndex,
  });

  final double horizontalPadding;
  final List<String> segments;
  final ValueNotifier<int> selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.0,
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          SegmentedButton<int>(
            segments: List.generate(
              segments.length,
              (index) => ButtonSegment<int>(
                value: index,
                label: Text(segments[index]),
              ),
            ),
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.resolveWith<Color?>((
                states,
              ) {
                if (states.contains(WidgetState.selected)) {
                  return Colors.black87; // 선택된 버튼 배경색
                } else if (states.contains(WidgetState.hovered)) {
                  return kBColor;
                }
                return Colors.white; // 비선택 버튼 배경색
              }),
              foregroundColor: WidgetStateProperty.resolveWith<Color?>((
                states,
              ) {
                if (states.contains(WidgetState.selected)) {
                  return Colors.white; // 선택된 버튼 글자색
                }
                return Colors.black; // 비선택 버튼 글자색
              }),
              // shape: WidgetStateProperty.resolveWith<OutlinedBorder?>((states) {
              //   return RoundedRectangleBorder(
              //     side: BorderSide(color: kBColor, width: 1.0),
              //     // borderRadius: BorderRadius.circular(4),
              //   );
              // }),
              // shape: WidgetStateProperty.resolveWith<RoundedRectangleBorder?>((
              //   states,
              // ) {
              //   if (kDebugMode) {
              //     print('shape');
              //     print(states);
              //   }
              //   return RoundedRectangleBorder(
              //     side:
              //         // BorderSide(color: Colors.grey[200]!, width: 1),
              //         BorderSide(color: kBColor, width: 1.0),
              //     // borderRadius: BorderRadius.circular(4),
              //   );
              // }),
            ),
            selected: {selectedIndex.value},
            onSelectionChanged: (newSelection) {
              if (kDebugMode) {
                print(newSelection);
              }
              if (newSelection.isEmpty) {
                return;
              }

              selectedIndex.value = newSelection.first;
              switch (newSelection.first) {
                case 0:
                  context.go('/content/symbols');
                  break;
                case 1:
                  context.go('/content/boards');
                  break;
                default:
                  break;
              }
            },
          ),
          Spacer(),
        ],
      ),
    );
  }
}
