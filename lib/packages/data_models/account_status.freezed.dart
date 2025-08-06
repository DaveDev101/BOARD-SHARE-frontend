// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountStatus {

 int get accountStatusId; String get accountStatus;
/// Create a copy of AccountStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountStatusCopyWith<AccountStatus> get copyWith => _$AccountStatusCopyWithImpl<AccountStatus>(this as AccountStatus, _$identity);

  /// Serializes this AccountStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountStatus&&(identical(other.accountStatusId, accountStatusId) || other.accountStatusId == accountStatusId)&&(identical(other.accountStatus, accountStatus) || other.accountStatus == accountStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountStatusId,accountStatus);

@override
String toString() {
  return 'AccountStatus(accountStatusId: $accountStatusId, accountStatus: $accountStatus)';
}


}

/// @nodoc
abstract mixin class $AccountStatusCopyWith<$Res>  {
  factory $AccountStatusCopyWith(AccountStatus value, $Res Function(AccountStatus) _then) = _$AccountStatusCopyWithImpl;
@useResult
$Res call({
 int accountStatusId, String accountStatus
});




}
/// @nodoc
class _$AccountStatusCopyWithImpl<$Res>
    implements $AccountStatusCopyWith<$Res> {
  _$AccountStatusCopyWithImpl(this._self, this._then);

  final AccountStatus _self;
  final $Res Function(AccountStatus) _then;

/// Create a copy of AccountStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accountStatusId = null,Object? accountStatus = null,}) {
  return _then(_self.copyWith(
accountStatusId: null == accountStatusId ? _self.accountStatusId : accountStatusId // ignore: cast_nullable_to_non_nullable
as int,accountStatus: null == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountStatus].
extension AccountStatusPatterns on AccountStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountStatus value)  $default,){
final _that = this;
switch (_that) {
case _AccountStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountStatus value)?  $default,){
final _that = this;
switch (_that) {
case _AccountStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int accountStatusId,  String accountStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountStatus() when $default != null:
return $default(_that.accountStatusId,_that.accountStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int accountStatusId,  String accountStatus)  $default,) {final _that = this;
switch (_that) {
case _AccountStatus():
return $default(_that.accountStatusId,_that.accountStatus);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int accountStatusId,  String accountStatus)?  $default,) {final _that = this;
switch (_that) {
case _AccountStatus() when $default != null:
return $default(_that.accountStatusId,_that.accountStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountStatus implements AccountStatus {
  const _AccountStatus({required this.accountStatusId, this.accountStatus = "unknown"});
  factory _AccountStatus.fromJson(Map<String, dynamic> json) => _$AccountStatusFromJson(json);

@override final  int accountStatusId;
@override@JsonKey() final  String accountStatus;

/// Create a copy of AccountStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountStatusCopyWith<_AccountStatus> get copyWith => __$AccountStatusCopyWithImpl<_AccountStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountStatus&&(identical(other.accountStatusId, accountStatusId) || other.accountStatusId == accountStatusId)&&(identical(other.accountStatus, accountStatus) || other.accountStatus == accountStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountStatusId,accountStatus);

@override
String toString() {
  return 'AccountStatus(accountStatusId: $accountStatusId, accountStatus: $accountStatus)';
}


}

/// @nodoc
abstract mixin class _$AccountStatusCopyWith<$Res> implements $AccountStatusCopyWith<$Res> {
  factory _$AccountStatusCopyWith(_AccountStatus value, $Res Function(_AccountStatus) _then) = __$AccountStatusCopyWithImpl;
@override @useResult
$Res call({
 int accountStatusId, String accountStatus
});




}
/// @nodoc
class __$AccountStatusCopyWithImpl<$Res>
    implements _$AccountStatusCopyWith<$Res> {
  __$AccountStatusCopyWithImpl(this._self, this._then);

  final _AccountStatus _self;
  final $Res Function(_AccountStatus) _then;

/// Create a copy of AccountStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accountStatusId = null,Object? accountStatus = null,}) {
  return _then(_AccountStatus(
accountStatusId: null == accountStatusId ? _self.accountStatusId : accountStatusId // ignore: cast_nullable_to_non_nullable
as int,accountStatus: null == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
