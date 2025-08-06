// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountStatus _$AccountStatusFromJson(Map<String, dynamic> json) =>
    _AccountStatus(
      accountStatusId: (json['account_status_id'] as num).toInt(),
      accountStatus: json['account_status'] as String? ?? "unknown",
    );

Map<String, dynamic> _$AccountStatusToJson(_AccountStatus instance) =>
    <String, dynamic>{
      'account_status_id': instance.accountStatusId,
      'account_status': instance.accountStatus,
    };
