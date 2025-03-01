// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountRoleImpl _$$AccountRoleImplFromJson(Map<String, dynamic> json) =>
    _$AccountRoleImpl(
      roleId: (json['role_id'] as num).toInt(),
      role: json['role'] as String? ?? "unknown",
    );

Map<String, dynamic> _$$AccountRoleImplToJson(_$AccountRoleImpl instance) =>
    <String, dynamic>{
      'role_id': instance.roleId,
      'role': instance.role,
    };
