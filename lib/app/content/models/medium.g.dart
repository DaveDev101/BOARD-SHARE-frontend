// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medium.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediumImpl _$$MediumImplFromJson(Map<String, dynamic> json) => _$MediumImpl(
      id: (json['id'] as num?)?.toInt(),
      mediumTitle: json['medium_title'] as String?,
      mediumPath: json['medium_path'] as String?,
      mediumUrl: json['medium_url'] as String?,
      mediumMimeType: json['medium_mime_type'] as String?,
      mediumStatus: json['medium_status'] == null
          ? null
          : MediumStatus.fromJson(
              json['medium_status'] as Map<String, dynamic>),
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

Map<String, dynamic> _$$MediumImplToJson(_$MediumImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.mediumTitle case final value?) 'medium_title': value,
      if (instance.mediumPath case final value?) 'medium_path': value,
      if (instance.mediumUrl case final value?) 'medium_url': value,
      if (instance.mediumMimeType case final value?) 'medium_mime_type': value,
      if (instance.mediumStatus case final value?) 'medium_status': value,
      if (instance.userId case final value?) 'user_id': value,
      if (instance.userOrgId case final value?) 'user_org_id': value,
      if (instance.description case final value?) 'description': value,
      if (instance.createdAt?.toIso8601String() case final value?)
        'created_at': value,
      if (instance.updatedAt?.toIso8601String() case final value?)
        'updated_at': value,
    };

_$MediumStatusImpl _$$MediumStatusImplFromJson(Map<String, dynamic> json) =>
    _$MediumStatusImpl(
      id: (json['id'] as num?)?.toInt(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$MediumStatusImplToJson(_$MediumStatusImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.status case final value?) 'status': value,
    };
