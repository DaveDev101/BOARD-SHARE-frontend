// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'org.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Org _$OrgFromJson(Map<String, dynamic> json) => _Org(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  businessNo: json['business_no'] as String?,
  status: json['status'] == null
      ? null
      : AccountStatus.fromJson(json['status'] as Map<String, dynamic>),
  phone: json['phone'] as String?,
  email: json['email'] as String?,
  notes: json['notes'] as String?,
  zipCode: json['zip_code'] as String?,
  address1: json['address1'] as String?,
  address2: json['address2'] as String?,
  adminNotes: json['admin_notes'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$OrgToJson(_Org instance) => <String, dynamic>{
  'id': ?instance.id,
  'name': ?instance.name,
  'business_no': ?instance.businessNo,
  'status': ?instance.status,
  'phone': ?instance.phone,
  'email': ?instance.email,
  'notes': ?instance.notes,
  'zip_code': ?instance.zipCode,
  'address1': ?instance.address1,
  'address2': ?instance.address2,
  'admin_notes': ?instance.adminNotes,
  'created_at': ?instance.createdAt?.toIso8601String(),
  'updated_at': ?instance.updatedAt?.toIso8601String(),
};
