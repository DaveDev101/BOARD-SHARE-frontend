// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_role.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountRole {

 int get roleId; String get role;
/// Create a copy of AccountRole
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountRoleCopyWith<AccountRole> get copyWith => _$AccountRoleCopyWithImpl<AccountRole>(this as AccountRole, _$identity);

  /// Serializes this AccountRole to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountRole&&(identical(other.roleId, roleId) || other.roleId == roleId)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roleId,role);

@override
String toString() {
  return 'AccountRole(roleId: $roleId, role: $role)';
}


}

/// @nodoc
abstract mixin class $AccountRoleCopyWith<$Res>  {
  factory $AccountRoleCopyWith(AccountRole value, $Res Function(AccountRole) _then) = _$AccountRoleCopyWithImpl;
@useResult
$Res call({
 int roleId, String role
});




}
/// @nodoc
class _$AccountRoleCopyWithImpl<$Res>
    implements $AccountRoleCopyWith<$Res> {
  _$AccountRoleCopyWithImpl(this._self, this._then);

  final AccountRole _self;
  final $Res Function(AccountRole) _then;

/// Create a copy of AccountRole
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roleId = null,Object? role = null,}) {
  return _then(_self.copyWith(
roleId: null == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as int,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountRole].
extension AccountRolePatterns on AccountRole {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountRole value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountRole() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountRole value)  $default,){
final _that = this;
switch (_that) {
case _AccountRole():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountRole value)?  $default,){
final _that = this;
switch (_that) {
case _AccountRole() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int roleId,  String role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountRole() when $default != null:
return $default(_that.roleId,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int roleId,  String role)  $default,) {final _that = this;
switch (_that) {
case _AccountRole():
return $default(_that.roleId,_that.role);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int roleId,  String role)?  $default,) {final _that = this;
switch (_that) {
case _AccountRole() when $default != null:
return $default(_that.roleId,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountRole implements AccountRole {
  const _AccountRole({required this.roleId, this.role = "unknown"});
  factory _AccountRole.fromJson(Map<String, dynamic> json) => _$AccountRoleFromJson(json);

@override final  int roleId;
@override@JsonKey() final  String role;

/// Create a copy of AccountRole
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountRoleCopyWith<_AccountRole> get copyWith => __$AccountRoleCopyWithImpl<_AccountRole>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountRoleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountRole&&(identical(other.roleId, roleId) || other.roleId == roleId)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roleId,role);

@override
String toString() {
  return 'AccountRole(roleId: $roleId, role: $role)';
}


}

/// @nodoc
abstract mixin class _$AccountRoleCopyWith<$Res> implements $AccountRoleCopyWith<$Res> {
  factory _$AccountRoleCopyWith(_AccountRole value, $Res Function(_AccountRole) _then) = __$AccountRoleCopyWithImpl;
@override @useResult
$Res call({
 int roleId, String role
});




}
/// @nodoc
class __$AccountRoleCopyWithImpl<$Res>
    implements _$AccountRoleCopyWith<$Res> {
  __$AccountRoleCopyWithImpl(this._self, this._then);

  final _AccountRole _self;
  final $Res Function(_AccountRole) _then;

/// Create a copy of AccountRole
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roleId = null,Object? role = null,}) {
  return _then(_AccountRole(
roleId: null == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as int,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
