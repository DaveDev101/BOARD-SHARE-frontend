import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../packages/core/colors.dart';
import '../models/aac_post.dart';
import '../models/media_model.dart';
// import 'board_detail.dart';

final boardEditorProvider = NotifierProvider.autoDispose
    .family<BoardEditorNotifier, PostModel, AACPost>(BoardEditorNotifier.new);

class BoardEditorNotifier extends FamilyNotifier<PostModel, AACPost> {
  BoardEditorNotifier();

  @override
  PostModel build(AACPost? initialBoardData) {
    if (initialBoardData == null) {
      final media = List.filled(20, null);
      return PostModel(
        id: 0,
        postAuthorId: 0,
        postAuthorOrgId: 0,
        postTitle: '',
        status: AACPostStatus(id: 0, status: ''),
        media: media,
      );
    }

    final colsLength = int.parse(
      initialBoardData.gridSize?.split(' by ').first ?? '4',
    );
    final rowsLength = int.parse(
      initialBoardData.gridSize?.split(' by ').last ?? '5',
    );
    final cellsLength = colsLength * rowsLength;
    List<MediaModel?> boardData = [];
    for (int i = 0; i < cellsLength; i++) {
      if (i < (initialBoardData.postMedia?.length ?? 0)) {
        final media = initialBoardData.postMedia?[i];
        boardData.add(
          MediaModel(
            mediumId: media?.mediumId ?? 0,
            title: media?.customTitle ?? '',
            type: MediumType.hanspeakSymbol,
            imageUrl: media?.medium?.mediumUrl ?? '',
          ),
        );
      } else {
        boardData.add(null);
      }
    }
    return PostModel(
      id: initialBoardData.id ?? 0,
      postAuthorId: initialBoardData.postAuthorId ?? 0,
      postAuthorOrgId: initialBoardData.postAuthorOrgId ?? 0,
      postTitle: initialBoardData.postTitle ?? '',
      status: initialBoardData.postStatus ?? AACPostStatus(id: 0, status: ''),
      postExcerpt: initialBoardData.postExcerpt,
      description: initialBoardData.description,
      bgColor: hexToColor(initialBoardData.bgColor ?? '#ffffff'),
      gridSize: initialBoardData.gridSize,
      mBgColor: hexToColor(initialBoardData.mBgColor ?? '#ffffff'),
      media: boardData,
    );
  }

  void updateTitle(String title) {
    state = state.copyWith(postTitle: title);
  }

  void updateDescription(String? text) {
    state = state.copyWith(description: text);
  }

  void updateGridSize({required int cols, required int rows}) {
    final cellsLength = cols * rows;
    List<MediaModel?> boardData = [];
    for (int i = 0; i < cellsLength; i++) {
      if (i < state.media.length && state.media[i] != null) {
        final medium = state.media[i];
        boardData.add(
          MediaModel(
            mediumId: medium?.mediumId ?? 0,
            title: medium?.title ?? '',
            type: MediumType.hanspeakSymbol,
            imageUrl: medium?.imageUrl ?? '',
          ),
        );
      } else {
        boardData.add(null);
      }
    }
    state = state.copyWith(gridSize: '$cols by $rows', media: boardData);
  }

  void updateBgColor(Color color) {
    state = state.copyWith(bgColor: color);
  }

  void placeSymbol(int gridIndex, MediaModel medium) {
    final prevState = state;

    List<MediaModel?> media = [];
    for (int i = 0; i < prevState.media.length; i++) {
      media.add(i == gridIndex ? medium : prevState.media[i]);
    }
    state = prevState.copyWith(media: media);
  }

  void updateSymbolTitle(int gridIndex, String title) {
    List<MediaModel?> media = [];
    for (int i = 0; i < state.media.length; i++) {
      media.add(
        i == gridIndex
            ? (state.media[i]?.copyWith(title: title))
            : state.media[i],
      );
    }
    state = state.copyWith(media: media);
  }

  void removeSymbol(int gridIndex) {
    List<MediaModel?> media = [];
    for (int i = 0; i < state.media.length; i++) {
      media.add(i == gridIndex ? null : state.media[i]);
    }
    state = state.copyWith(media: media);
  }

  void saveDraft() {}

  Future<void> publish() async {
    await Future.delayed(const Duration(milliseconds: 500), () {
      state = state.copyWith(status: AACPostStatus(id: 1, status: 'published'));
      if (kDebugMode) print('===> published!');
    });
  }
}
