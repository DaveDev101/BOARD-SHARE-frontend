// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_org.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserOrg {

@JsonKey(includeIfNull: false) int? get userId;@JsonKey(includeIfNull: false) int? get orgId;@JsonKey(includeIfNull: false) AccountStatus? get status;@JsonKey(includeIfNull: false) AccountRole? get role;@JsonKey(includeIfNull: false) String? get avatarPath;@JsonKey(includeIfNull: false) String? get notes;@JsonKey(includeIfNull: false) DateTime? get joinedAt;@JsonKey(includeIfNull: false) DateTime? get leftAt;@JsonKey(includeIfNull: false) DateTime? get createdAt;@JsonKey(includeIfNull: false) DateTime? get updatedAt;@JsonKey(includeIfNull: false) User? get user;@JsonKey(includeIfNull: false) Org? get org;
/// Create a copy of UserOrg
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserOrgCopyWith<UserOrg> get copyWith => _$UserOrgCopyWithImpl<UserOrg>(this as UserOrg, _$identity);

  /// Serializes this UserOrg to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserOrg&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.orgId, orgId) || other.orgId == orgId)&&(identical(other.status, status) || other.status == status)&&(identical(other.role, role) || other.role == role)&&(identical(other.avatarPath, avatarPath) || other.avatarPath == avatarPath)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt)&&(identical(other.leftAt, leftAt) || other.leftAt == leftAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.user, user) || other.user == user)&&(identical(other.org, org) || other.org == org));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,orgId,status,role,avatarPath,notes,joinedAt,leftAt,createdAt,updatedAt,user,org);

@override
String toString() {
  return 'UserOrg(userId: $userId, orgId: $orgId, status: $status, role: $role, avatarPath: $avatarPath, notes: $notes, joinedAt: $joinedAt, leftAt: $leftAt, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, org: $org)';
}


}

/// @nodoc
abstract mixin class $UserOrgCopyWith<$Res>  {
  factory $UserOrgCopyWith(UserOrg value, $Res Function(UserOrg) _then) = _$UserOrgCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) int? userId,@JsonKey(includeIfNull: false) int? orgId,@JsonKey(includeIfNull: false) AccountStatus? status,@JsonKey(includeIfNull: false) AccountRole? role,@JsonKey(includeIfNull: false) String? avatarPath,@JsonKey(includeIfNull: false) String? notes,@JsonKey(includeIfNull: false) DateTime? joinedAt,@JsonKey(includeIfNull: false) DateTime? leftAt,@JsonKey(includeIfNull: false) DateTime? createdAt,@JsonKey(includeIfNull: false) DateTime? updatedAt,@JsonKey(includeIfNull: false) User? user,@JsonKey(includeIfNull: false) Org? org
});


$AccountStatusCopyWith<$Res>? get status;$AccountRoleCopyWith<$Res>? get role;$UserCopyWith<$Res>? get user;$OrgCopyWith<$Res>? get org;

}
/// @nodoc
class _$UserOrgCopyWithImpl<$Res>
    implements $UserOrgCopyWith<$Res> {
  _$UserOrgCopyWithImpl(this._self, this._then);

  final UserOrg _self;
  final $Res Function(UserOrg) _then;

/// Create a copy of UserOrg
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? orgId = freezed,Object? status = freezed,Object? role = freezed,Object? avatarPath = freezed,Object? notes = freezed,Object? joinedAt = freezed,Object? leftAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? user = freezed,Object? org = freezed,}) {
  return _then(_self.copyWith(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,orgId: freezed == orgId ? _self.orgId : orgId // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AccountStatus?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as AccountRole?,avatarPath: freezed == avatarPath ? _self.avatarPath : avatarPath // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,joinedAt: freezed == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,leftAt: freezed == leftAt ? _self.leftAt : leftAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,org: freezed == org ? _self.org : org // ignore: cast_nullable_to_non_nullable
as Org?,
  ));
}
/// Create a copy of UserOrg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountStatusCopyWith<$Res>? get status {
    if (_self.status == null) {
    return null;
  }

  return $AccountStatusCopyWith<$Res>(_self.status!, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of UserOrg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountRoleCopyWith<$Res>? get role {
    if (_self.role == null) {
    return null;
  }

  return $AccountRoleCopyWith<$Res>(_self.role!, (value) {
    return _then(_self.copyWith(role: value));
  });
}/// Create a copy of UserOrg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of UserOrg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrgCopyWith<$Res>? get org {
    if (_self.org == null) {
    return null;
  }

  return $OrgCopyWith<$Res>(_self.org!, (value) {
    return _then(_self.copyWith(org: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserOrg].
extension UserOrgPatterns on UserOrg {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserOrg value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserOrg() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserOrg value)  $default,){
final _that = this;
switch (_that) {
case _UserOrg():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserOrg value)?  $default,){
final _that = this;
switch (_that) {
case _UserOrg() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? userId, @JsonKey(includeIfNull: false)  int? orgId, @JsonKey(includeIfNull: false)  AccountStatus? status, @JsonKey(includeIfNull: false)  AccountRole? role, @JsonKey(includeIfNull: false)  String? avatarPath, @JsonKey(includeIfNull: false)  String? notes, @JsonKey(includeIfNull: false)  DateTime? joinedAt, @JsonKey(includeIfNull: false)  DateTime? leftAt, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt, @JsonKey(includeIfNull: false)  User? user, @JsonKey(includeIfNull: false)  Org? org)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserOrg() when $default != null:
return $default(_that.userId,_that.orgId,_that.status,_that.role,_that.avatarPath,_that.notes,_that.joinedAt,_that.leftAt,_that.createdAt,_that.updatedAt,_that.user,_that.org);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? userId, @JsonKey(includeIfNull: false)  int? orgId, @JsonKey(includeIfNull: false)  AccountStatus? status, @JsonKey(includeIfNull: false)  AccountRole? role, @JsonKey(includeIfNull: false)  String? avatarPath, @JsonKey(includeIfNull: false)  String? notes, @JsonKey(includeIfNull: false)  DateTime? joinedAt, @JsonKey(includeIfNull: false)  DateTime? leftAt, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt, @JsonKey(includeIfNull: false)  User? user, @JsonKey(includeIfNull: false)  Org? org)  $default,) {final _that = this;
switch (_that) {
case _UserOrg():
return $default(_that.userId,_that.orgId,_that.status,_that.role,_that.avatarPath,_that.notes,_that.joinedAt,_that.leftAt,_that.createdAt,_that.updatedAt,_that.user,_that.org);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  int? userId, @JsonKey(includeIfNull: false)  int? orgId, @JsonKey(includeIfNull: false)  AccountStatus? status, @JsonKey(includeIfNull: false)  AccountRole? role, @JsonKey(includeIfNull: false)  String? avatarPath, @JsonKey(includeIfNull: false)  String? notes, @JsonKey(includeIfNull: false)  DateTime? joinedAt, @JsonKey(includeIfNull: false)  DateTime? leftAt, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt, @JsonKey(includeIfNull: false)  User? user, @JsonKey(includeIfNull: false)  Org? org)?  $default,) {final _that = this;
switch (_that) {
case _UserOrg() when $default != null:
return $default(_that.userId,_that.orgId,_that.status,_that.role,_that.avatarPath,_that.notes,_that.joinedAt,_that.leftAt,_that.createdAt,_that.updatedAt,_that.user,_that.org);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserOrg implements UserOrg {
  const _UserOrg({@JsonKey(includeIfNull: false) this.userId, @JsonKey(includeIfNull: false) this.orgId, @JsonKey(includeIfNull: false) this.status, @JsonKey(includeIfNull: false) this.role, @JsonKey(includeIfNull: false) this.avatarPath, @JsonKey(includeIfNull: false) this.notes, @JsonKey(includeIfNull: false) this.joinedAt, @JsonKey(includeIfNull: false) this.leftAt, @JsonKey(includeIfNull: false) this.createdAt, @JsonKey(includeIfNull: false) this.updatedAt, @JsonKey(includeIfNull: false) this.user, @JsonKey(includeIfNull: false) this.org});
  factory _UserOrg.fromJson(Map<String, dynamic> json) => _$UserOrgFromJson(json);

@override@JsonKey(includeIfNull: false) final  int? userId;
@override@JsonKey(includeIfNull: false) final  int? orgId;
@override@JsonKey(includeIfNull: false) final  AccountStatus? status;
@override@JsonKey(includeIfNull: false) final  AccountRole? role;
@override@JsonKey(includeIfNull: false) final  String? avatarPath;
@override@JsonKey(includeIfNull: false) final  String? notes;
@override@JsonKey(includeIfNull: false) final  DateTime? joinedAt;
@override@JsonKey(includeIfNull: false) final  DateTime? leftAt;
@override@JsonKey(includeIfNull: false) final  DateTime? createdAt;
@override@JsonKey(includeIfNull: false) final  DateTime? updatedAt;
@override@JsonKey(includeIfNull: false) final  User? user;
@override@JsonKey(includeIfNull: false) final  Org? org;

/// Create a copy of UserOrg
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserOrgCopyWith<_UserOrg> get copyWith => __$UserOrgCopyWithImpl<_UserOrg>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserOrgToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserOrg&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.orgId, orgId) || other.orgId == orgId)&&(identical(other.status, status) || other.status == status)&&(identical(other.role, role) || other.role == role)&&(identical(other.avatarPath, avatarPath) || other.avatarPath == avatarPath)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt)&&(identical(other.leftAt, leftAt) || other.leftAt == leftAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.user, user) || other.user == user)&&(identical(other.org, org) || other.org == org));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,orgId,status,role,avatarPath,notes,joinedAt,leftAt,createdAt,updatedAt,user,org);

@override
String toString() {
  return 'UserOrg(userId: $userId, orgId: $orgId, status: $status, role: $role, avatarPath: $avatarPath, notes: $notes, joinedAt: $joinedAt, leftAt: $leftAt, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, org: $org)';
}


}

/// @nodoc
abstract mixin class _$UserOrgCopyWith<$Res> implements $UserOrgCopyWith<$Res> {
  factory _$UserOrgCopyWith(_UserOrg value, $Res Function(_UserOrg) _then) = __$UserOrgCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) int? userId,@JsonKey(includeIfNull: false) int? orgId,@JsonKey(includeIfNull: false) AccountStatus? status,@JsonKey(includeIfNull: false) AccountRole? role,@JsonKey(includeIfNull: false) String? avatarPath,@JsonKey(includeIfNull: false) String? notes,@JsonKey(includeIfNull: false) DateTime? joinedAt,@JsonKey(includeIfNull: false) DateTime? leftAt,@JsonKey(includeIfNull: false) DateTime? createdAt,@JsonKey(includeIfNull: false) DateTime? updatedAt,@JsonKey(includeIfNull: false) User? user,@JsonKey(includeIfNull: false) Org? org
});


@override $AccountStatusCopyWith<$Res>? get status;@override $AccountRoleCopyWith<$Res>? get role;@override $UserCopyWith<$Res>? get user;@override $OrgCopyWith<$Res>? get org;

}
/// @nodoc
class __$UserOrgCopyWithImpl<$Res>
    implements _$UserOrgCopyWith<$Res> {
  __$UserOrgCopyWithImpl(this._self, this._then);

  final _UserOrg _self;
  final $Res Function(_UserOrg) _then;

/// Create a copy of UserOrg
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? orgId = freezed,Object? status = freezed,Object? role = freezed,Object? avatarPath = freezed,Object? notes = freezed,Object? joinedAt = freezed,Object? leftAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? user = freezed,Object? org = freezed,}) {
  return _then(_UserOrg(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,orgId: freezed == orgId ? _self.orgId : orgId // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AccountStatus?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as AccountRole?,avatarPath: freezed == avatarPath ? _self.avatarPath : avatarPath // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,joinedAt: freezed == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,leftAt: freezed == leftAt ? _self.leftAt : leftAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,org: freezed == org ? _self.org : org // ignore: cast_nullable_to_non_nullable
as Org?,
  ));
}

/// Create a copy of UserOrg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountStatusCopyWith<$Res>? get status {
    if (_self.status == null) {
    return null;
  }

  return $AccountStatusCopyWith<$Res>(_self.status!, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of UserOrg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountRoleCopyWith<$Res>? get role {
    if (_self.role == null) {
    return null;
  }

  return $AccountRoleCopyWith<$Res>(_self.role!, (value) {
    return _then(_self.copyWith(role: value));
  });
}/// Create a copy of UserOrg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of UserOrg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrgCopyWith<$Res>? get org {
    if (_self.org == null) {
    return null;
  }

  return $OrgCopyWith<$Res>(_self.org!, (value) {
    return _then(_self.copyWith(org: value));
  });
}
}

// dart format on
