// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: (json['id'] as num?)?.toInt(),
  email: json['email'] as String?,
  password: json['password'] as String?,
  displayName: json['display_name'] as String?,
  status: json['status'] == null
      ? null
      : AccountStatus.fromJson(json['status'] as Map<String, dynamic>),
  notes: json['notes'] as String?,
  zipCode: json['zip_code'] as String?,
  address1: json['address1'] as String?,
  address2: json['address2'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': ?instance.id,
  'email': ?instance.email,
  'password': ?instance.password,
  'display_name': ?instance.displayName,
  'status': ?instance.status,
  'notes': ?instance.notes,
  'zip_code': ?instance.zipCode,
  'address1': ?instance.address1,
  'address2': ?instance.address2,
  'created_at': ?instance.createdAt?.toIso8601String(),
  'updated_at': ?instance.updatedAt?.toIso8601String(),
};
