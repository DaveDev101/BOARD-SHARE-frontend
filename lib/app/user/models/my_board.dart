import 'package:freezed_annotation/freezed_annotation.dart';

import 'my_medium.dart';

part 'my_board.freezed.dart';
part 'my_board.g.dart';

@freezed
sealed class MyBoard with _$MyBoard {
  const factory MyBoard({
    @JsonKey(includeIfNull: false) int? boardId,
    @JsonKey(includeIfNull: false) int? boardAuthorId,
    @JsonKey(includeIfNull: false) int? boardAuthorOrgId,
    @JsonKey(includeIfNull: false) String? author,
    @JsonKey(includeIfNull: false) String? authorOrg,
    @JsonKey(includeIfNull: false) bool? boardProtected,
    @JsonKey(includeIfNull: false) String? boardTitle,
    @JsonKey(includeIfNull: false) String? boardExcerpt,
    @JsonKey(includeIfNull: false) List<MyMedium>? media,
    @JsonKey(includeIfNull: false) bool? isCommentOpen,
    @JsonKey(includeIfNull: false) int? likeCount,
    @JsonKey(includeIfNull: false) int? commentCount,
    @JsonKey(includeIfNull: false) String? bgColor,
    @JsonKey(includeIfNull: false) String? gridSize,
    @JsonKey(includeIfNull: false) String? mBgColor,
    @JsonKey(includeIfNull: false) double? mFontSize,
    @JsonKey(includeIfNull: false) List<String>? taxonomy,
    @JsonKey(includeIfNull: false) String? taxonomyPath,
    @JsonKey(includeIfNull: false) DateTime? createdAt,
    @JsonKey(includeIfNull: false) DateTime? updatedAt,
  }) = _MyBoard;

  factory MyBoard.fromJson(Map<String, Object?> json) =>
      _$MyBoardFromJson(json);
}
