// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountStatusImpl _$$AccountStatusImplFromJson(Map<String, dynamic> json) =>
    _$AccountStatusImpl(
      accountStatusId: (json['account_status_id'] as num).toInt(),
      accountStatus: json['account_status'] as String? ?? "unknown",
    );

Map<String, dynamic> _$$AccountStatusImplToJson(_$AccountStatusImpl instance) =>
    <String, dynamic>{
      'account_status_id': instance.accountStatusId,
      'account_status': instance.accountStatus,
    };
