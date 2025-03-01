// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mock_home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MockHomeImpl _$$MockHomeImplFromJson(Map<String, dynamic> json) =>
    _$MockHomeImpl(
      id: (json['id'] as num?)?.toInt(),
      status: json['status'] as String,
      message: json['message'] as String,
      version: json['version'] as String,
      email: json['email'] as String? ?? "no-email@example.com",
    );

Map<String, dynamic> _$$MockHomeImplToJson(_$MockHomeImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      'status': instance.status,
      'message': instance.message,
      'version': instance.version,
      'email': instance.email,
    };
