// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_org.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserOrg _$UserOrgFromJson(Map<String, dynamic> json) {
  return _UserOrg.fromJson(json);
}

/// @nodoc
mixin _$UserOrg {
  @JsonKey(includeIfNull: false)
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get orgId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  AccountStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  AccountRole? get role => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get avatarPath => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  DateTime? get joinedAt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  DateTime? get leftAt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  Org? get org => throw _privateConstructorUsedError;

  /// Serializes this UserOrg to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserOrg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserOrgCopyWith<UserOrg> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserOrgCopyWith<$Res> {
  factory $UserOrgCopyWith(UserOrg value, $Res Function(UserOrg) then) =
      _$UserOrgCopyWithImpl<$Res, UserOrg>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? userId,
      @JsonKey(includeIfNull: false) int? orgId,
      @JsonKey(includeIfNull: false) AccountStatus? status,
      @JsonKey(includeIfNull: false) AccountRole? role,
      @JsonKey(includeIfNull: false) String? avatarPath,
      @JsonKey(includeIfNull: false) String? notes,
      @JsonKey(includeIfNull: false) DateTime? joinedAt,
      @JsonKey(includeIfNull: false) DateTime? leftAt,
      @JsonKey(includeIfNull: false) DateTime? createdAt,
      @JsonKey(includeIfNull: false) DateTime? updatedAt,
      @JsonKey(includeIfNull: false) User? user,
      @JsonKey(includeIfNull: false) Org? org});

  $AccountStatusCopyWith<$Res>? get status;
  $AccountRoleCopyWith<$Res>? get role;
  $UserCopyWith<$Res>? get user;
  $OrgCopyWith<$Res>? get org;
}

/// @nodoc
class _$UserOrgCopyWithImpl<$Res, $Val extends UserOrg>
    implements $UserOrgCopyWith<$Res> {
  _$UserOrgCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserOrg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? orgId = freezed,
    Object? status = freezed,
    Object? role = freezed,
    Object? avatarPath = freezed,
    Object? notes = freezed,
    Object? joinedAt = freezed,
    Object? leftAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? org = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      orgId: freezed == orgId
          ? _value.orgId
          : orgId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountStatus?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as AccountRole?,
      avatarPath: freezed == avatarPath
          ? _value.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      joinedAt: freezed == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      leftAt: freezed == leftAt
          ? _value.leftAt
          : leftAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      org: freezed == org
          ? _value.org
          : org // ignore: cast_nullable_to_non_nullable
              as Org?,
    ) as $Val);
  }

  /// Create a copy of UserOrg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountStatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $AccountStatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of UserOrg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountRoleCopyWith<$Res>? get role {
    if (_value.role == null) {
      return null;
    }

    return $AccountRoleCopyWith<$Res>(_value.role!, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }

  /// Create a copy of UserOrg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of UserOrg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrgCopyWith<$Res>? get org {
    if (_value.org == null) {
      return null;
    }

    return $OrgCopyWith<$Res>(_value.org!, (value) {
      return _then(_value.copyWith(org: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserOrgImplCopyWith<$Res> implements $UserOrgCopyWith<$Res> {
  factory _$$UserOrgImplCopyWith(
          _$UserOrgImpl value, $Res Function(_$UserOrgImpl) then) =
      __$$UserOrgImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? userId,
      @JsonKey(includeIfNull: false) int? orgId,
      @JsonKey(includeIfNull: false) AccountStatus? status,
      @JsonKey(includeIfNull: false) AccountRole? role,
      @JsonKey(includeIfNull: false) String? avatarPath,
      @JsonKey(includeIfNull: false) String? notes,
      @JsonKey(includeIfNull: false) DateTime? joinedAt,
      @JsonKey(includeIfNull: false) DateTime? leftAt,
      @JsonKey(includeIfNull: false) DateTime? createdAt,
      @JsonKey(includeIfNull: false) DateTime? updatedAt,
      @JsonKey(includeIfNull: false) User? user,
      @JsonKey(includeIfNull: false) Org? org});

  @override
  $AccountStatusCopyWith<$Res>? get status;
  @override
  $AccountRoleCopyWith<$Res>? get role;
  @override
  $UserCopyWith<$Res>? get user;
  @override
  $OrgCopyWith<$Res>? get org;
}

/// @nodoc
class __$$UserOrgImplCopyWithImpl<$Res>
    extends _$UserOrgCopyWithImpl<$Res, _$UserOrgImpl>
    implements _$$UserOrgImplCopyWith<$Res> {
  __$$UserOrgImplCopyWithImpl(
      _$UserOrgImpl _value, $Res Function(_$UserOrgImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserOrg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? orgId = freezed,
    Object? status = freezed,
    Object? role = freezed,
    Object? avatarPath = freezed,
    Object? notes = freezed,
    Object? joinedAt = freezed,
    Object? leftAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? org = freezed,
  }) {
    return _then(_$UserOrgImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      orgId: freezed == orgId
          ? _value.orgId
          : orgId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountStatus?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as AccountRole?,
      avatarPath: freezed == avatarPath
          ? _value.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      joinedAt: freezed == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      leftAt: freezed == leftAt
          ? _value.leftAt
          : leftAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      org: freezed == org
          ? _value.org
          : org // ignore: cast_nullable_to_non_nullable
              as Org?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserOrgImpl implements _UserOrg {
  const _$UserOrgImpl(
      {@JsonKey(includeIfNull: false) this.userId,
      @JsonKey(includeIfNull: false) this.orgId,
      @JsonKey(includeIfNull: false) this.status,
      @JsonKey(includeIfNull: false) this.role,
      @JsonKey(includeIfNull: false) this.avatarPath,
      @JsonKey(includeIfNull: false) this.notes,
      @JsonKey(includeIfNull: false) this.joinedAt,
      @JsonKey(includeIfNull: false) this.leftAt,
      @JsonKey(includeIfNull: false) this.createdAt,
      @JsonKey(includeIfNull: false) this.updatedAt,
      @JsonKey(includeIfNull: false) this.user,
      @JsonKey(includeIfNull: false) this.org});

  factory _$UserOrgImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserOrgImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final int? userId;
  @override
  @JsonKey(includeIfNull: false)
  final int? orgId;
  @override
  @JsonKey(includeIfNull: false)
  final AccountStatus? status;
  @override
  @JsonKey(includeIfNull: false)
  final AccountRole? role;
  @override
  @JsonKey(includeIfNull: false)
  final String? avatarPath;
  @override
  @JsonKey(includeIfNull: false)
  final String? notes;
  @override
  @JsonKey(includeIfNull: false)
  final DateTime? joinedAt;
  @override
  @JsonKey(includeIfNull: false)
  final DateTime? leftAt;
  @override
  @JsonKey(includeIfNull: false)
  final DateTime? createdAt;
  @override
  @JsonKey(includeIfNull: false)
  final DateTime? updatedAt;
  @override
  @JsonKey(includeIfNull: false)
  final User? user;
  @override
  @JsonKey(includeIfNull: false)
  final Org? org;

  @override
  String toString() {
    return 'UserOrg(userId: $userId, orgId: $orgId, status: $status, role: $role, avatarPath: $avatarPath, notes: $notes, joinedAt: $joinedAt, leftAt: $leftAt, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, org: $org)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserOrgImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.orgId, orgId) || other.orgId == orgId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.avatarPath, avatarPath) ||
                other.avatarPath == avatarPath) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.leftAt, leftAt) || other.leftAt == leftAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.org, org) || other.org == org));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, orgId, status, role,
      avatarPath, notes, joinedAt, leftAt, createdAt, updatedAt, user, org);

  /// Create a copy of UserOrg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserOrgImplCopyWith<_$UserOrgImpl> get copyWith =>
      __$$UserOrgImplCopyWithImpl<_$UserOrgImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserOrgImplToJson(
      this,
    );
  }
}

abstract class _UserOrg implements UserOrg {
  const factory _UserOrg(
      {@JsonKey(includeIfNull: false) final int? userId,
      @JsonKey(includeIfNull: false) final int? orgId,
      @JsonKey(includeIfNull: false) final AccountStatus? status,
      @JsonKey(includeIfNull: false) final AccountRole? role,
      @JsonKey(includeIfNull: false) final String? avatarPath,
      @JsonKey(includeIfNull: false) final String? notes,
      @JsonKey(includeIfNull: false) final DateTime? joinedAt,
      @JsonKey(includeIfNull: false) final DateTime? leftAt,
      @JsonKey(includeIfNull: false) final DateTime? createdAt,
      @JsonKey(includeIfNull: false) final DateTime? updatedAt,
      @JsonKey(includeIfNull: false) final User? user,
      @JsonKey(includeIfNull: false) final Org? org}) = _$UserOrgImpl;

  factory _UserOrg.fromJson(Map<String, dynamic> json) = _$UserOrgImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  int? get userId;
  @override
  @JsonKey(includeIfNull: false)
  int? get orgId;
  @override
  @JsonKey(includeIfNull: false)
  AccountStatus? get status;
  @override
  @JsonKey(includeIfNull: false)
  AccountRole? get role;
  @override
  @JsonKey(includeIfNull: false)
  String? get avatarPath;
  @override
  @JsonKey(includeIfNull: false)
  String? get notes;
  @override
  @JsonKey(includeIfNull: false)
  DateTime? get joinedAt;
  @override
  @JsonKey(includeIfNull: false)
  DateTime? get leftAt;
  @override
  @JsonKey(includeIfNull: false)
  DateTime? get createdAt;
  @override
  @JsonKey(includeIfNull: false)
  DateTime? get updatedAt;
  @override
  @JsonKey(includeIfNull: false)
  User? get user;
  @override
  @JsonKey(includeIfNull: false)
  Org? get org;

  /// Create a copy of UserOrg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserOrgImplCopyWith<_$UserOrgImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
