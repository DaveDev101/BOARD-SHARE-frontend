// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SigninResult _$SigninResultFromJson(Map<String, dynamic> json) {
  return _SigninResult.fromJson(json);
}

/// @nodoc
mixin _$SigninResult {
  Tokens get tokens => throw _privateConstructorUsedError;
  UserOrg get user => throw _privateConstructorUsedError;

  /// Serializes this SigninResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SigninResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SigninResultCopyWith<SigninResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninResultCopyWith<$Res> {
  factory $SigninResultCopyWith(
          SigninResult value, $Res Function(SigninResult) then) =
      _$SigninResultCopyWithImpl<$Res, SigninResult>;
  @useResult
  $Res call({Tokens tokens, UserOrg user});

  $TokensCopyWith<$Res> get tokens;
  $UserOrgCopyWith<$Res> get user;
}

/// @nodoc
class _$SigninResultCopyWithImpl<$Res, $Val extends SigninResult>
    implements $SigninResultCopyWith<$Res> {
  _$SigninResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SigninResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokens = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as Tokens,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserOrg,
    ) as $Val);
  }

  /// Create a copy of SigninResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokensCopyWith<$Res> get tokens {
    return $TokensCopyWith<$Res>(_value.tokens, (value) {
      return _then(_value.copyWith(tokens: value) as $Val);
    });
  }

  /// Create a copy of SigninResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserOrgCopyWith<$Res> get user {
    return $UserOrgCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SigninResultImplCopyWith<$Res>
    implements $SigninResultCopyWith<$Res> {
  factory _$$SigninResultImplCopyWith(
          _$SigninResultImpl value, $Res Function(_$SigninResultImpl) then) =
      __$$SigninResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Tokens tokens, UserOrg user});

  @override
  $TokensCopyWith<$Res> get tokens;
  @override
  $UserOrgCopyWith<$Res> get user;
}

/// @nodoc
class __$$SigninResultImplCopyWithImpl<$Res>
    extends _$SigninResultCopyWithImpl<$Res, _$SigninResultImpl>
    implements _$$SigninResultImplCopyWith<$Res> {
  __$$SigninResultImplCopyWithImpl(
      _$SigninResultImpl _value, $Res Function(_$SigninResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of SigninResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokens = null,
    Object? user = null,
  }) {
    return _then(_$SigninResultImpl(
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as Tokens,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserOrg,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SigninResultImpl implements _SigninResult {
  const _$SigninResultImpl({required this.tokens, required this.user});

  factory _$SigninResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SigninResultImplFromJson(json);

  @override
  final Tokens tokens;
  @override
  final UserOrg user;

  @override
  String toString() {
    return 'SigninResult(tokens: $tokens, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninResultImpl &&
            (identical(other.tokens, tokens) || other.tokens == tokens) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tokens, user);

  /// Create a copy of SigninResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninResultImplCopyWith<_$SigninResultImpl> get copyWith =>
      __$$SigninResultImplCopyWithImpl<_$SigninResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SigninResultImplToJson(
      this,
    );
  }
}

abstract class _SigninResult implements SigninResult {
  const factory _SigninResult(
      {required final Tokens tokens,
      required final UserOrg user}) = _$SigninResultImpl;

  factory _SigninResult.fromJson(Map<String, dynamic> json) =
      _$SigninResultImpl.fromJson;

  @override
  Tokens get tokens;
  @override
  UserOrg get user;

  /// Create a copy of SigninResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SigninResultImplCopyWith<_$SigninResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
