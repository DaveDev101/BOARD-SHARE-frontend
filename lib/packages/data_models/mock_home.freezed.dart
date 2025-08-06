// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mock_home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MockHome {

@JsonKey(includeIfNull: false) int? get id; String get status; String get message; String get version; String get email;
/// Create a copy of MockHome
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MockHomeCopyWith<MockHome> get copyWith => _$MockHomeCopyWithImpl<MockHome>(this as MockHome, _$identity);

  /// Serializes this MockHome to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MockHome&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.version, version) || other.version == version)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,message,version,email);

@override
String toString() {
  return 'MockHome(id: $id, status: $status, message: $message, version: $version, email: $email)';
}


}

/// @nodoc
abstract mixin class $MockHomeCopyWith<$Res>  {
  factory $MockHomeCopyWith(MockHome value, $Res Function(MockHome) _then) = _$MockHomeCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) int? id, String status, String message, String version, String email
});




}
/// @nodoc
class _$MockHomeCopyWithImpl<$Res>
    implements $MockHomeCopyWith<$Res> {
  _$MockHomeCopyWithImpl(this._self, this._then);

  final MockHome _self;
  final $Res Function(MockHome) _then;

/// Create a copy of MockHome
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? status = null,Object? message = null,Object? version = null,Object? email = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MockHome].
extension MockHomePatterns on MockHome {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MockHome value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MockHome() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MockHome value)  $default,){
final _that = this;
switch (_that) {
case _MockHome():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MockHome value)?  $default,){
final _that = this;
switch (_that) {
case _MockHome() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? id,  String status,  String message,  String version,  String email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MockHome() when $default != null:
return $default(_that.id,_that.status,_that.message,_that.version,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? id,  String status,  String message,  String version,  String email)  $default,) {final _that = this;
switch (_that) {
case _MockHome():
return $default(_that.id,_that.status,_that.message,_that.version,_that.email);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  int? id,  String status,  String message,  String version,  String email)?  $default,) {final _that = this;
switch (_that) {
case _MockHome() when $default != null:
return $default(_that.id,_that.status,_that.message,_that.version,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MockHome implements MockHome {
  const _MockHome({@JsonKey(includeIfNull: false) this.id, required this.status, required this.message, required this.version, this.email = "no-email@example.com"});
  factory _MockHome.fromJson(Map<String, dynamic> json) => _$MockHomeFromJson(json);

@override@JsonKey(includeIfNull: false) final  int? id;
@override final  String status;
@override final  String message;
@override final  String version;
@override@JsonKey() final  String email;

/// Create a copy of MockHome
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MockHomeCopyWith<_MockHome> get copyWith => __$MockHomeCopyWithImpl<_MockHome>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MockHomeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MockHome&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.version, version) || other.version == version)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,message,version,email);

@override
String toString() {
  return 'MockHome(id: $id, status: $status, message: $message, version: $version, email: $email)';
}


}

/// @nodoc
abstract mixin class _$MockHomeCopyWith<$Res> implements $MockHomeCopyWith<$Res> {
  factory _$MockHomeCopyWith(_MockHome value, $Res Function(_MockHome) _then) = __$MockHomeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) int? id, String status, String message, String version, String email
});




}
/// @nodoc
class __$MockHomeCopyWithImpl<$Res>
    implements _$MockHomeCopyWith<$Res> {
  __$MockHomeCopyWithImpl(this._self, this._then);

  final _MockHome _self;
  final $Res Function(_MockHome) _then;

/// Create a copy of MockHome
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? status = null,Object? message = null,Object? version = null,Object? email = null,}) {
  return _then(_MockHome(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
