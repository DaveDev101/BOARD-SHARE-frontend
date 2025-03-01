// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SigninResultImpl _$$SigninResultImplFromJson(Map<String, dynamic> json) =>
    _$SigninResultImpl(
      tokens: Tokens.fromJson(json['tokens'] as Map<String, dynamic>),
      user: UserOrg.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SigninResultImplToJson(_$SigninResultImpl instance) =>
    <String, dynamic>{
      'tokens': instance.tokens,
      'user': instance.user,
    };
