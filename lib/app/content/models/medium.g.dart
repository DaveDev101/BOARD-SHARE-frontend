// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medium.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Medium _$MediumFromJson(Map<String, dynamic> json) => _Medium(
  id: (json['id'] as num?)?.toInt(),
  mediumTitle: json['medium_title'] as String?,
  mediumPath: json['medium_path'] as String?,
  mediumUrl: json['medium_url'] as String?,
  mediumMimeType: json['medium_mime_type'] as String?,
  mediumStatus: json['medium_status'] == null
      ? null
      : MediumStatus.fromJson(json['medium_status'] as Map<String, dynamic>),
  userId: (json['user_id'] as num?)?.toInt(),
  userOrgId: (json['user_org_id'] as num?)?.toInt(),
  description: json['description'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$MediumToJson(_Medium instance) => <String, dynamic>{
  'id': ?instance.id,
  'medium_title': ?instance.mediumTitle,
  'medium_path': ?instance.mediumPath,
  'medium_url': ?instance.mediumUrl,
  'medium_mime_type': ?instance.mediumMimeType,
  'medium_status': ?instance.mediumStatus,
  'user_id': ?instance.userId,
  'user_org_id': ?instance.userOrgId,
  'description': ?instance.description,
  'created_at': ?instance.createdAt?.toIso8601String(),
  'updated_at': ?instance.updatedAt?.toIso8601String(),
};

_MediumStatus _$MediumStatusFromJson(Map<String, dynamic> json) =>
    _MediumStatus(
      id: (json['id'] as num?)?.toInt(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$MediumStatusToJson(_MediumStatus instance) =>
    <String, dynamic>{'id': ?instance.id, 'status': ?instance.status};
