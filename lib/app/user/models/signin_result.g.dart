// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SigninResult _$SigninResultFromJson(Map<String, dynamic> json) =>
    _SigninResult(
      tokens: Tokens.fromJson(json['tokens'] as Map<String, dynamic>),
      user: UserOrg.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SigninResultToJson(_SigninResult instance) =>
    <String, dynamic>{'tokens': instance.tokens, 'user': instance.user};
