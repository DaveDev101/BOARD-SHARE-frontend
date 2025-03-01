// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_role.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountRole _$AccountRoleFromJson(Map<String, dynamic> json) {
  return _AccountRole.fromJson(json);
}

/// @nodoc
mixin _$AccountRole {
  int get roleId => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

  /// Serializes this AccountRole to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountRole
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountRoleCopyWith<AccountRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountRoleCopyWith<$Res> {
  factory $AccountRoleCopyWith(
          AccountRole value, $Res Function(AccountRole) then) =
      _$AccountRoleCopyWithImpl<$Res, AccountRole>;
  @useResult
  $Res call({int roleId, String role});
}

/// @nodoc
class _$AccountRoleCopyWithImpl<$Res, $Val extends AccountRole>
    implements $AccountRoleCopyWith<$Res> {
  _$AccountRoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountRole
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleId = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountRoleImplCopyWith<$Res>
    implements $AccountRoleCopyWith<$Res> {
  factory _$$AccountRoleImplCopyWith(
          _$AccountRoleImpl value, $Res Function(_$AccountRoleImpl) then) =
      __$$AccountRoleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int roleId, String role});
}

/// @nodoc
class __$$AccountRoleImplCopyWithImpl<$Res>
    extends _$AccountRoleCopyWithImpl<$Res, _$AccountRoleImpl>
    implements _$$AccountRoleImplCopyWith<$Res> {
  __$$AccountRoleImplCopyWithImpl(
      _$AccountRoleImpl _value, $Res Function(_$AccountRoleImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountRole
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleId = null,
    Object? role = null,
  }) {
    return _then(_$AccountRoleImpl(
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountRoleImpl implements _AccountRole {
  const _$AccountRoleImpl({required this.roleId, this.role = "unknown"});

  factory _$AccountRoleImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountRoleImplFromJson(json);

  @override
  final int roleId;
  @override
  @JsonKey()
  final String role;

  @override
  String toString() {
    return 'AccountRole(roleId: $roleId, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountRoleImpl &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, roleId, role);

  /// Create a copy of AccountRole
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountRoleImplCopyWith<_$AccountRoleImpl> get copyWith =>
      __$$AccountRoleImplCopyWithImpl<_$AccountRoleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountRoleImplToJson(
      this,
    );
  }
}

abstract class _AccountRole implements AccountRole {
  const factory _AccountRole({required final int roleId, final String role}) =
      _$AccountRoleImpl;

  factory _AccountRole.fromJson(Map<String, dynamic> json) =
      _$AccountRoleImpl.fromJson;

  @override
  int get roleId;
  @override
  String get role;

  /// Create a copy of AccountRole
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountRoleImplCopyWith<_$AccountRoleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
