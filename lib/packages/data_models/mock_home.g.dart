// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mock_home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MockHome _$MockHomeFromJson(Map<String, dynamic> json) => _MockHome(
  id: (json['id'] as num?)?.toInt(),
  status: json['status'] as String,
  message: json['message'] as String,
  version: json['version'] as String,
  email: json['email'] as String? ?? "no-email@example.com",
);

Map<String, dynamic> _$MockHomeToJson(_MockHome instance) => <String, dynamic>{
  'id': ?instance.id,
  'status': instance.status,
  'message': instance.message,
  'version': instance.version,
  'email': instance.email,
};
