// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {

@JsonKey(includeIfNull: false) int? get id;@JsonKey(includeIfNull: false) String? get email;@JsonKey(includeIfNull: false) String? get password;@JsonKey(includeIfNull: false) String? get displayName;@JsonKey(includeIfNull: false) AccountStatus? get status;@JsonKey(includeIfNull: false) String? get notes;@JsonKey(includeIfNull: false) String? get zipCode;@JsonKey(includeIfNull: false) String? get address1;@JsonKey(includeIfNull: false) String? get address2;@JsonKey(includeIfNull: false) DateTime? get createdAt;@JsonKey(includeIfNull: false) DateTime? get updatedAt;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.status, status) || other.status == status)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.address1, address1) || other.address1 == address1)&&(identical(other.address2, address2) || other.address2 == address2)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,password,displayName,status,notes,zipCode,address1,address2,createdAt,updatedAt);

@override
String toString() {
  return 'User(id: $id, email: $email, password: $password, displayName: $displayName, status: $status, notes: $notes, zipCode: $zipCode, address1: $address1, address2: $address2, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) int? id,@JsonKey(includeIfNull: false) String? email,@JsonKey(includeIfNull: false) String? password,@JsonKey(includeIfNull: false) String? displayName,@JsonKey(includeIfNull: false) AccountStatus? status,@JsonKey(includeIfNull: false) String? notes,@JsonKey(includeIfNull: false) String? zipCode,@JsonKey(includeIfNull: false) String? address1,@JsonKey(includeIfNull: false) String? address2,@JsonKey(includeIfNull: false) DateTime? createdAt,@JsonKey(includeIfNull: false) DateTime? updatedAt
});


$AccountStatusCopyWith<$Res>? get status;

}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? email = freezed,Object? password = freezed,Object? displayName = freezed,Object? status = freezed,Object? notes = freezed,Object? zipCode = freezed,Object? address1 = freezed,Object? address2 = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AccountStatus?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,zipCode: freezed == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String?,address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,address2: freezed == address2 ? _self.address2 : address2 // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of User
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
}
}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? email, @JsonKey(includeIfNull: false)  String? password, @JsonKey(includeIfNull: false)  String? displayName, @JsonKey(includeIfNull: false)  AccountStatus? status, @JsonKey(includeIfNull: false)  String? notes, @JsonKey(includeIfNull: false)  String? zipCode, @JsonKey(includeIfNull: false)  String? address1, @JsonKey(includeIfNull: false)  String? address2, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.email,_that.password,_that.displayName,_that.status,_that.notes,_that.zipCode,_that.address1,_that.address2,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? email, @JsonKey(includeIfNull: false)  String? password, @JsonKey(includeIfNull: false)  String? displayName, @JsonKey(includeIfNull: false)  AccountStatus? status, @JsonKey(includeIfNull: false)  String? notes, @JsonKey(includeIfNull: false)  String? zipCode, @JsonKey(includeIfNull: false)  String? address1, @JsonKey(includeIfNull: false)  String? address2, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.id,_that.email,_that.password,_that.displayName,_that.status,_that.notes,_that.zipCode,_that.address1,_that.address2,_that.createdAt,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? email, @JsonKey(includeIfNull: false)  String? password, @JsonKey(includeIfNull: false)  String? displayName, @JsonKey(includeIfNull: false)  AccountStatus? status, @JsonKey(includeIfNull: false)  String? notes, @JsonKey(includeIfNull: false)  String? zipCode, @JsonKey(includeIfNull: false)  String? address1, @JsonKey(includeIfNull: false)  String? address2, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.email,_that.password,_that.displayName,_that.status,_that.notes,_that.zipCode,_that.address1,_that.address2,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({@JsonKey(includeIfNull: false) this.id, @JsonKey(includeIfNull: false) this.email, @JsonKey(includeIfNull: false) this.password, @JsonKey(includeIfNull: false) this.displayName, @JsonKey(includeIfNull: false) this.status, @JsonKey(includeIfNull: false) this.notes, @JsonKey(includeIfNull: false) this.zipCode, @JsonKey(includeIfNull: false) this.address1, @JsonKey(includeIfNull: false) this.address2, @JsonKey(includeIfNull: false) this.createdAt, @JsonKey(includeIfNull: false) this.updatedAt});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override@JsonKey(includeIfNull: false) final  int? id;
@override@JsonKey(includeIfNull: false) final  String? email;
@override@JsonKey(includeIfNull: false) final  String? password;
@override@JsonKey(includeIfNull: false) final  String? displayName;
@override@JsonKey(includeIfNull: false) final  AccountStatus? status;
@override@JsonKey(includeIfNull: false) final  String? notes;
@override@JsonKey(includeIfNull: false) final  String? zipCode;
@override@JsonKey(includeIfNull: false) final  String? address1;
@override@JsonKey(includeIfNull: false) final  String? address2;
@override@JsonKey(includeIfNull: false) final  DateTime? createdAt;
@override@JsonKey(includeIfNull: false) final  DateTime? updatedAt;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.status, status) || other.status == status)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.address1, address1) || other.address1 == address1)&&(identical(other.address2, address2) || other.address2 == address2)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,password,displayName,status,notes,zipCode,address1,address2,createdAt,updatedAt);

@override
String toString() {
  return 'User(id: $id, email: $email, password: $password, displayName: $displayName, status: $status, notes: $notes, zipCode: $zipCode, address1: $address1, address2: $address2, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) int? id,@JsonKey(includeIfNull: false) String? email,@JsonKey(includeIfNull: false) String? password,@JsonKey(includeIfNull: false) String? displayName,@JsonKey(includeIfNull: false) AccountStatus? status,@JsonKey(includeIfNull: false) String? notes,@JsonKey(includeIfNull: false) String? zipCode,@JsonKey(includeIfNull: false) String? address1,@JsonKey(includeIfNull: false) String? address2,@JsonKey(includeIfNull: false) DateTime? createdAt,@JsonKey(includeIfNull: false) DateTime? updatedAt
});


@override $AccountStatusCopyWith<$Res>? get status;

}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? email = freezed,Object? password = freezed,Object? displayName = freezed,Object? status = freezed,Object? notes = freezed,Object? zipCode = freezed,Object? address1 = freezed,Object? address2 = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_User(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AccountStatus?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,zipCode: freezed == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String?,address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,address2: freezed == address2 ? _self.address2 : address2 // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of User
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
}
}

// dart format on
