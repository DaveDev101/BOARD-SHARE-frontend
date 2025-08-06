// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountRole _$AccountRoleFromJson(Map<String, dynamic> json) => _AccountRole(
  roleId: (json['role_id'] as num).toInt(),
  role: json['role'] as String? ?? "unknown",
);

Map<String, dynamic> _$AccountRoleToJson(_AccountRole instance) =>
    <String, dynamic>{'role_id': instance.roleId, 'role': instance.role};
