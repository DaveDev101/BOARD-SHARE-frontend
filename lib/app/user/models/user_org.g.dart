// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_org.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserOrgImpl _$$UserOrgImplFromJson(Map<String, dynamic> json) =>
    _$UserOrgImpl(
      userId: (json['user_id'] as num?)?.toInt(),
      orgId: (json['org_id'] as num?)?.toInt(),
      status: json['status'] == null
          ? null
          : AccountStatus.fromJson(json['status'] as Map<String, dynamic>),
      role: json['role'] == null
          ? null
          : AccountRole.fromJson(json['role'] as Map<String, dynamic>),
      avatarPath: json['avatar_path'] as String?,
      notes: json['notes'] as String?,
      joinedAt: json['joined_at'] == null
          ? null
          : DateTime.parse(json['joined_at'] as String),
      leftAt: json['left_at'] == null
          ? null
          : DateTime.parse(json['left_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      org: json['org'] == null
          ? null
          : Org.fromJson(json['org'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserOrgImplToJson(_$UserOrgImpl instance) =>
    <String, dynamic>{
      if (instance.userId case final value?) 'user_id': value,
      if (instance.orgId case final value?) 'org_id': value,
      if (instance.status case final value?) 'status': value,
      if (instance.role case final value?) 'role': value,
      if (instance.avatarPath case final value?) 'avatar_path': value,
      if (instance.notes case final value?) 'notes': value,
      if (instance.joinedAt?.toIso8601String() case final value?)
        'joined_at': value,
      if (instance.leftAt?.toIso8601String() case final value?)
        'left_at': value,
      if (instance.createdAt?.toIso8601String() case final value?)
        'created_at': value,
      if (instance.updatedAt?.toIso8601String() case final value?)
        'updated_at': value,
      if (instance.user case final value?) 'user': value,
      if (instance.org case final value?) 'org': value,
    };
