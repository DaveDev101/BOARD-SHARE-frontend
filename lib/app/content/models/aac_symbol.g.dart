// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aac_symbol.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AACSymbol _$AACSymbolFromJson(Map<String, dynamic> json) => _AACSymbol(
  id: (json['id'] as num?)?.toInt(),
  symbolTitle: json['symbol_title'] as String?,
  symbolExcerpt: json['symbol_excerpt'] as String?,
  symbolStatus: json['symbol_status'] == null
      ? null
      : AACSymbolStatus.fromJson(json['symbol_status'] as Map<String, dynamic>),
  isCommentOpen: json['is_comment_open'] as bool?,
  medium: json['medium'] == null
      ? null
      : Medium.fromJson(json['medium'] as Map<String, dynamic>),
  commentCount: (json['comment_count'] as num?)?.toInt(),
  likeCount: (json['like_count'] as num?)?.toInt(),
  symbolSystem: json['symbol_system'] == null
      ? null
      : AACSymbolSystem.fromJson(json['symbol_system'] as Map<String, dynamic>),
  description: json['description'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$AACSymbolToJson(_AACSymbol instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'symbol_title': ?instance.symbolTitle,
      'symbol_excerpt': ?instance.symbolExcerpt,
      'symbol_status': ?instance.symbolStatus,
      'is_comment_open': ?instance.isCommentOpen,
      'medium': ?instance.medium,
      'comment_count': ?instance.commentCount,
      'like_count': ?instance.likeCount,
      'symbol_system': ?instance.symbolSystem,
      'description': ?instance.description,
      'created_at': ?instance.createdAt?.toIso8601String(),
      'updated_at': ?instance.updatedAt?.toIso8601String(),
    };

_AACSymbolStatus _$AACSymbolStatusFromJson(Map<String, dynamic> json) =>
    _AACSymbolStatus(
      id: (json['id'] as num?)?.toInt(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$AACSymbolStatusToJson(_AACSymbolStatus instance) =>
    <String, dynamic>{'id': ?instance.id, 'status': ?instance.status};

_AACSymbolSystem _$AACSymbolSystemFromJson(Map<String, dynamic> json) =>
    _AACSymbolSystem(
      id: (json['id'] as num?)?.toInt(),
      systemName: json['system_name'] as String?,
      issuer: json['issuer'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$AACSymbolSystemToJson(_AACSymbolSystem instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'system_name': ?instance.systemName,
      'issuer': ?instance.issuer,
      'description': ?instance.description,
    };
