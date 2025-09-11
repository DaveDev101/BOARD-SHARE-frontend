// lib/widgets/symbol_library.dart
import 'package:flutter/material.dart';
import '../../../../packages/core/sizes.dart';
// import '../../../../packages/ui_components/loading_image.dart';
import '../../models/media_model.dart';
import 'medium_item.dart';

// 실제로는 검색 기능으로 동적으로 목록을 가져옵니다.
final List<MediaModel> _media = [
  MediaModel(
    mediumId: 100001,
    title: 'help',
    imageUrl: 'path/to/help.svg',
    type: MediumType.hanspeakSymbol,
  ),
  MediaModel(
    mediumId: 100002,
    title: 'stop',
    imageUrl: 'path/to/stop.svg',
    type: MediumType.hanspeakSymbol,
  ),
  MediaModel(
    mediumId: 100003,
    title: 'pink',
    imageUrl: 'path/to/pink.svg',
    type: MediumType.hanspeakSymbol,
  ),
];

class MediaLibrary extends StatelessWidget {
  const MediaLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Column(
        children: [
          TextField(decoration: InputDecoration(hintText: 'Search Symbols')),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(kPadding / 2.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
              itemCount: _media.length,
              itemBuilder: (context, index) {
                final symbol = _media[index];
                return LayoutBuilder(
                  builder: (context, constraints) {
                    return Draggable<MediaModel>(
                      data: symbol, // 드래그 시 전달할 데이터
                      feedback: Center(
                        child: MediumItem(
                          medium: symbol,
                          isDragging: true,
                          width: constraints.maxWidth,
                          height: constraints.maxHeight,
                        ),
                      ), // 드래그 중 표시될 위젯
                      child: MediumItem(
                        medium: symbol,
                        width: constraints.maxWidth,
                        height: constraints.maxHeight,
                        isTextEditable: false,
                      ), // 평상시 표시될 위젯
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
