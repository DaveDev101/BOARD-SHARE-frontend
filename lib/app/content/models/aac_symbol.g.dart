// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aac_symbol.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AACSymbolImpl _$$AACSymbolImplFromJson(Map<String, dynamic> json) =>
    _$AACSymbolImpl(
      id: (json['id'] as num?)?.toInt(),
      symbolTitle: json['symbol_title'] as String?,
      symbolExcerpt: json['symbol_excerpt'] as String?,
      symbolStatus: json['symbol_status'] == null
          ? null
          : AACSymbolStatus.fromJson(
              json['symbol_status'] as Map<String, dynamic>),
      isCommentOpen: json['is_comment_open'] as bool?,
      medium: json['medium'] == null
          ? null
          : Medium.fromJson(json['medium'] as Map<String, dynamic>),
      commentCount: (json['comment_count'] as num?)?.toInt(),
      likeCount: (json['like_count'] as num?)?.toInt(),
      symbolSystem: json['symbol_system'] == null
          ? null
          : AACSymbolSystem.fromJson(
              json['symbol_system'] as Map<String, dynamic>),
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$AACSymbolImplToJson(_$AACSymbolImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.symbolTitle case final value?) 'symbol_title': value,
      if (instance.symbolExcerpt case final value?) 'symbol_excerpt': value,
      if (instance.symbolStatus case final value?) 'symbol_status': value,
      if (instance.isCommentOpen case final value?) 'is_comment_open': value,
      if (instance.medium case final value?) 'medium': value,
      if (instance.commentCount case final value?) 'comment_count': value,
      if (instance.likeCount case final value?) 'like_count': value,
      if (instance.symbolSystem case final value?) 'symbol_system': value,
      if (instance.description case final value?) 'description': value,
      if (instance.createdAt?.toIso8601String() case final value?)
        'created_at': value,
      if (instance.updatedAt?.toIso8601String() case final value?)
        'updated_at': value,
    };

_$AACSymbolStatusImpl _$$AACSymbolStatusImplFromJson(
        Map<String, dynamic> json) =>
    _$AACSymbolStatusImpl(
      id: (json['id'] as num?)?.toInt(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$AACSymbolStatusImplToJson(
        _$AACSymbolStatusImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.status case final value?) 'status': value,
    };

_$AACSymbolSystemImpl _$$AACSymbolSystemImplFromJson(
        Map<String, dynamic> json) =>
    _$AACSymbolSystemImpl(
      id: (json['id'] as num?)?.toInt(),
      systemName: json['system_name'] as String?,
      Issuer: json['issuer'] as String?,
      Description: json['description'] as String?,
    );

Map<String, dynamic> _$$AACSymbolSystemImplToJson(
        _$AACSymbolSystemImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.systemName case final value?) 'system_name': value,
      if (instance.Issuer case final value?) 'issuer': value,
      if (instance.Description case final value?) 'description': value,
    };
