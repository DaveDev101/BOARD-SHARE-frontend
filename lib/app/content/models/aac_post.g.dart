// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aac_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AACPost _$AACPostFromJson(Map<String, dynamic> json) => _AACPost(
  id: (json['id'] as num?)?.toInt(),
  postAuthorId: (json['post_author_id'] as num?)?.toInt(),
  postAuthorOrgId: (json['post_author_org_id'] as num?)?.toInt(),
  postAuthor: json['post_author'] as String?,
  postAuthorOrg: json['post_author_org'] as String?,
  postType: (json['post_type'] as num?)?.toInt(),
  postPassword: json['post_password'] as String?,
  postTitle: json['post_title'] as String?,
  postExcerpt: json['post_excerpt'] as String?,
  postStatus: json['post_status'] == null
      ? null
      : AACPostStatus.fromJson(json['post_status'] as Map<String, dynamic>),
  isCommentOpen: json['is_comment_open'] as bool?,
  commentCount: (json['comment_count'] as num?)?.toInt(),
  likeCount: (json['like_count'] as num?)?.toInt(),
  postParent: (json['post_parent'] as num?)?.toInt(),
  postContent: json['post_content'] as String?,
  description: json['description'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  bgColor: json['bg_color'] as String?,
  gridSize: json['grid_size'] as String?,
  mBgColor: json['m_bg_color'] as String?,
  mFontSize: json['m_font_size'] as String?,
  postMedia: (json['post_media'] as List<dynamic>?)
      ?.map((e) => AACPostMedia.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AACPostToJson(_AACPost instance) => <String, dynamic>{
  'id': ?instance.id,
  'post_author_id': ?instance.postAuthorId,
  'post_author_org_id': ?instance.postAuthorOrgId,
  'post_author': ?instance.postAuthor,
  'post_author_org': ?instance.postAuthorOrg,
  'post_type': ?instance.postType,
  'post_password': ?instance.postPassword,
  'post_title': ?instance.postTitle,
  'post_excerpt': ?instance.postExcerpt,
  'post_status': ?instance.postStatus,
  'is_comment_open': ?instance.isCommentOpen,
  'comment_count': ?instance.commentCount,
  'like_count': ?instance.likeCount,
  'post_parent': ?instance.postParent,
  'post_content': ?instance.postContent,
  'description': ?instance.description,
  'created_at': ?instance.createdAt?.toIso8601String(),
  'updated_at': ?instance.updatedAt?.toIso8601String(),
  'bg_color': ?instance.bgColor,
  'grid_size': ?instance.gridSize,
  'm_bg_color': ?instance.mBgColor,
  'm_font_size': ?instance.mFontSize,
  'post_media': ?instance.postMedia,
};

_AACPostStatus _$AACPostStatusFromJson(Map<String, dynamic> json) =>
    _AACPostStatus(
      id: (json['id'] as num?)?.toInt(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$AACPostStatusToJson(_AACPostStatus instance) =>
    <String, dynamic>{'id': ?instance.id, 'status': ?instance.status};

_AACPostMedia _$AACPostMediaFromJson(Map<String, dynamic> json) =>
    _AACPostMedia(
      postId: (json['post_id'] as num?)?.toInt(),
      sequence: (json['sequence'] as num?)?.toInt(),
      mediumId: (json['medium_id'] as num?)?.toInt(),
      medium: json['medium'] == null
          ? null
          : Medium.fromJson(json['medium'] as Map<String, dynamic>),
      isMain: json['is_main'] as bool?,
      screenX: (json['screen_x'] as num?)?.toDouble(),
      screenY: (json['screen_y'] as num?)?.toDouble(),
      customTitle: json['custom_title'] as String?,
      status: json['status'] == null
          ? null
          : AACPostMediaStatus.fromJson(json['status'] as Map<String, dynamic>),
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$AACPostMediaToJson(_AACPostMedia instance) =>
    <String, dynamic>{
      'post_id': ?instance.postId,
      'sequence': ?instance.sequence,
      'medium_id': ?instance.mediumId,
      'medium': ?instance.medium,
      'is_main': ?instance.isMain,
      'screen_x': ?instance.screenX,
      'screen_y': ?instance.screenY,
      'custom_title': ?instance.customTitle,
      'status': ?instance.status,
      'description': ?instance.description,
      'created_at': ?instance.createdAt?.toIso8601String(),
      'updated_at': ?instance.updatedAt?.toIso8601String(),
    };

_AACPostMediaStatus _$AACPostMediaStatusFromJson(Map<String, dynamic> json) =>
    _AACPostMediaStatus(
      id: (json['id'] as num?)?.toInt(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$AACPostMediaStatusToJson(_AACPostMediaStatus instance) =>
    <String, dynamic>{'id': ?instance.id, 'status': ?instance.status};
