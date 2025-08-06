// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'es_medium.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ESMedium _$ESMediumFromJson(Map<String, dynamic> json) => _ESMedium(
  sequence: (json['sequence'] as num?)?.toInt(),
  mediumId: (json['medium_id'] as num?)?.toInt(),
  isMain: json['is_main'] as bool?,
  screenX: (json['screen_x'] as num?)?.toDouble(),
  screenY: (json['screen_y'] as num?)?.toDouble(),
  customTitle: json['custom_title'] as String?,
  mediumPath: json['medium_path'] as String?,
  mediumUrl: json['medium_url'] as String?,
  mediumMimeType: json['medium_mime_type'] as String?,
  authorID: (json['author_i_d'] as num?)?.toInt(),
  authorOrgID: (json['author_org_i_d'] as num?)?.toInt(),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$ESMediumToJson(_ESMedium instance) => <String, dynamic>{
  'sequence': ?instance.sequence,
  'medium_id': ?instance.mediumId,
  'is_main': ?instance.isMain,
  'screen_x': ?instance.screenX,
  'screen_y': ?instance.screenY,
  'custom_title': ?instance.customTitle,
  'medium_path': ?instance.mediumPath,
  'medium_url': ?instance.mediumUrl,
  'medium_mime_type': ?instance.mediumMimeType,
  'author_i_d': ?instance.authorID,
  'author_org_i_d': ?instance.authorOrgID,
  'created_at': ?instance.createdAt?.toIso8601String(),
  'updated_at': ?instance.updatedAt?.toIso8601String(),
};
