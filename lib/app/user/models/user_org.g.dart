// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_org.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserOrg _$UserOrgFromJson(Map<String, dynamic> json) => _UserOrg(
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

Map<String, dynamic> _$UserOrgToJson(_UserOrg instance) => <String, dynamic>{
  'user_id': ?instance.userId,
  'org_id': ?instance.orgId,
  'status': ?instance.status,
  'role': ?instance.role,
  'avatar_path': ?instance.avatarPath,
  'notes': ?instance.notes,
  'joined_at': ?instance.joinedAt?.toIso8601String(),
  'left_at': ?instance.leftAt?.toIso8601String(),
  'created_at': ?instance.createdAt?.toIso8601String(),
  'updated_at': ?instance.updatedAt?.toIso8601String(),
  'user': ?instance.user,
  'org': ?instance.org,
};
