// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'org.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrgImpl _$$OrgImplFromJson(Map<String, dynamic> json) => _$OrgImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      businessNo: json['business_no'] as String?,
      status: json['status'] == null
          ? null
          : AccountStatus.fromJson(json['status'] as Map<String, dynamic>),
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      zipcode: json['zipcode'] as String?,
      address: json['address'] as String?,
      description: json['description'] as String?,
      adminNotes: json['admin_notes'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$OrgImplToJson(_$OrgImpl instance) => <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.businessNo case final value?) 'business_no': value,
      if (instance.status case final value?) 'status': value,
      if (instance.phone case final value?) 'phone': value,
      if (instance.email case final value?) 'email': value,
      if (instance.zipcode case final value?) 'zipcode': value,
      if (instance.address case final value?) 'address': value,
      if (instance.description case final value?) 'description': value,
      if (instance.adminNotes case final value?) 'admin_notes': value,
      if (instance.createdAt?.toIso8601String() case final value?)
        'created_at': value,
      if (instance.updatedAt?.toIso8601String() case final value?)
        'updated_at': value,
    };
