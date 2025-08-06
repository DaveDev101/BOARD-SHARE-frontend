// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_board.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyBoard _$MyBoardFromJson(Map<String, dynamic> json) => _MyBoard(
  boardId: (json['board_id'] as num?)?.toInt(),
  boardAuthorId: (json['board_author_id'] as num?)?.toInt(),
  boardAuthorOrgId: (json['board_author_org_id'] as num?)?.toInt(),
  author: json['author'] as String?,
  authorOrg: json['author_org'] as String?,
  boardProtected: json['board_protected'] as bool?,
  boardTitle: json['board_title'] as String?,
  boardExcerpt: json['board_excerpt'] as String?,
  media: (json['media'] as List<dynamic>?)
      ?.map((e) => MyMedium.fromJson(e as Map<String, dynamic>))
      .toList(),
  isCommentOpen: json['is_comment_open'] as bool?,
  likeCount: (json['like_count'] as num?)?.toInt(),
  commentCount: (json['comment_count'] as num?)?.toInt(),
  bgColor: json['bg_color'] as String?,
  gridSize: json['grid_size'] as String?,
  mBgColor: json['m_bg_color'] as String?,
  mFontSize: (json['m_font_size'] as num?)?.toDouble(),
  taxonomy: (json['taxonomy'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  taxonomyPath: json['taxonomy_path'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$MyBoardToJson(_MyBoard instance) => <String, dynamic>{
  'board_id': ?instance.boardId,
  'board_author_id': ?instance.boardAuthorId,
  'board_author_org_id': ?instance.boardAuthorOrgId,
  'author': ?instance.author,
  'author_org': ?instance.authorOrg,
  'board_protected': ?instance.boardProtected,
  'board_title': ?instance.boardTitle,
  'board_excerpt': ?instance.boardExcerpt,
  'media': ?instance.media,
  'is_comment_open': ?instance.isCommentOpen,
  'like_count': ?instance.likeCount,
  'comment_count': ?instance.commentCount,
  'bg_color': ?instance.bgColor,
  'grid_size': ?instance.gridSize,
  'm_bg_color': ?instance.mBgColor,
  'm_font_size': ?instance.mFontSize,
  'taxonomy': ?instance.taxonomy,
  'taxonomy_path': ?instance.taxonomyPath,
  'created_at': ?instance.createdAt?.toIso8601String(),
  'updated_at': ?instance.updatedAt?.toIso8601String(),
};
