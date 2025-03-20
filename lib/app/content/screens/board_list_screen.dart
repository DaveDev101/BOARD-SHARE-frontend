import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../packages/core/sizes.dart';

class BoardListScreen extends HookConsumerWidget {
  const BoardListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sWidth = MediaQuery.of(context).size.width;
    final sHeight = MediaQuery.of(context).size.height;
    final horizontalPadding =
        (sWidth > kMaxWidth) ? (sWidth - kMaxWidth) / 2 : 0.0;

    final selectedIndex = useState(1);
    final List<String> segments = [
      '상징 (41,729)',
      '의사소통판 (1,861)',
      '한스피크자료 (5,584)'
    ];

    final List<Map<String, dynamic>> categories = [
      {'title': 'Medical & Hospital', 'icons': 218},
      {'title': 'Hospital - Line', 'icons': 200},
      {'title': 'Hospital - Solid', 'icons': 200},
      {'title': 'Hospital', 'icons': 157},
      {'title': 'Hospital', 'icons': 150},
      {'title': 'Medical and Hospital', 'icons': 179},
    ];

    return Container(
      height: 1200,
      color: Colors.grey[200],
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
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
                      backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                        (states) {
                          if (states.contains(WidgetState.selected)) {
                            return Colors.black87; // 선택된 버튼 배경색
                          }
                          return Colors.white; // 비선택 버튼 배경색
                        },
                      ),
                      foregroundColor: WidgetStateProperty.resolveWith<Color?>(
                        (states) {
                          if (states.contains(WidgetState.selected)) {
                            return Colors.white; // 선택된 버튼 글자색
                          }
                          return Colors.black; // 비선택 버튼 글자색
                        },
                      ),
                      shape: WidgetStateProperty.resolveWith<
                          RoundedRectangleBorder?>(
                        (states) {
                          return RoundedRectangleBorder(
                            side:
                                BorderSide(color: Colors.grey[200]!, width: 1),
                            borderRadius: BorderRadius.circular(4),
                          );
                        },
                      ),
                    ),
                    selected: {selectedIndex.value},
                    onSelectionChanged: (newSelection) {
                      selectedIndex.value = newSelection.first;
                    },
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding, vertical: kESpace),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 44,
                mainAxisSpacing: 44,
                childAspectRatio: 1,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          categories[index]['title'],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text('${categories[index]['icons']} icons',
                            style: TextStyle(color: Colors.grey[700])),
                      ],
                    ),
                  );
                },
                childCount: categories.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
