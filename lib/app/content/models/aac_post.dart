import 'package:freezed_annotation/freezed_annotation.dart';

import 'medium.dart';

part 'aac_post.freezed.dart';
part 'aac_post.g.dart';

@freezed
sealed class AACPost with _$AACPost {
  const factory AACPost({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeIfNull: false) int? postAuthorId,
    @JsonKey(includeIfNull: false) int? postAuthorOrgId,
    @JsonKey(includeIfNull: false) String? postAuthor,
    @JsonKey(includeIfNull: false) String? postAuthorOrg,
    @JsonKey(includeIfNull: false) int? postType,
    @JsonKey(includeIfNull: false) String? postPassword,
    @JsonKey(includeIfNull: false) String? postTitle,
    @JsonKey(includeIfNull: false) String? postExcerpt,
    @JsonKey(includeIfNull: false) AACPostStatus? postStatus,
    @JsonKey(includeIfNull: false) bool? isCommentOpen,
    @JsonKey(includeIfNull: false) int? commentCount,
    @JsonKey(includeIfNull: false) int? likeCount,
    @JsonKey(includeIfNull: false) int? postParent,
    @JsonKey(includeIfNull: false) String? postContent,
    @JsonKey(includeIfNull: false) String? description,
    @JsonKey(includeIfNull: false) DateTime? createdAt,
    @JsonKey(includeIfNull: false) DateTime? updatedAt,
    @JsonKey(includeIfNull: false) String? bgColor,
    @JsonKey(includeIfNull: false) String? gridSize,
    @JsonKey(includeIfNull: false) String? mBgColor,
    @JsonKey(includeIfNull: false) String? mFontSize,
    @JsonKey(includeIfNull: false) List<AACPostMedia>? postMedia,
  }) = _AACPost;

  factory AACPost.fromJson(Map<String, Object?> json) =>
      _$AACPostFromJson(json);
}

@freezed
sealed class AACPostStatus with _$AACPostStatus {
  const factory AACPostStatus({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeIfNull: false) String? status,
  }) = _AACPostStatus;

  factory AACPostStatus.fromJson(Map<String, Object?> json) =>
      _$AACPostStatusFromJson(json);
}

@freezed
sealed class AACPostMedia with _$AACPostMedia {
  const factory AACPostMedia({
    @JsonKey(includeIfNull: false) int? postId,
    @JsonKey(includeIfNull: false) int? sequence,
    @JsonKey(includeIfNull: false) int? mediumId,
    @JsonKey(includeIfNull: false) Medium? medium,
    @JsonKey(includeIfNull: false) bool? isMain,
    @JsonKey(includeIfNull: false) double? screenX,
    @JsonKey(includeIfNull: false) double? screenY,
    @JsonKey(includeIfNull: false) String? customTitle,
    @JsonKey(includeIfNull: false) AACPostMediaStatus? status,
    @JsonKey(includeIfNull: false) String? description,
    @JsonKey(includeIfNull: false) DateTime? createdAt,
    @JsonKey(includeIfNull: false) DateTime? updatedAt,
  }) = _AACPostMedia;

  factory AACPostMedia.fromJson(Map<String, Object?> json) =>
      _$AACPostMediaFromJson(json);
}

@freezed
sealed class AACPostMediaStatus with _$AACPostMediaStatus {
  const factory AACPostMediaStatus({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeIfNull: false) String? status,
  }) = _AACPostMediaStatus;

  factory AACPostMediaStatus.fromJson(Map<String, Object?> json) =>
      _$AACPostMediaStatusFromJson(json);
}
