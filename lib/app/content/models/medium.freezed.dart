// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medium.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Medium {

@JsonKey(includeIfNull: false) int? get id;@JsonKey(includeIfNull: false) String? get mediumTitle;@JsonKey(includeIfNull: false) String? get mediumPath;@JsonKey(includeIfNull: false) String? get mediumUrl;@JsonKey(includeIfNull: false) String? get mediumMimeType;@JsonKey(includeIfNull: false) MediumStatus? get mediumStatus;@JsonKey(includeIfNull: false) int? get userId;@JsonKey(includeIfNull: false) int? get userOrgId;@JsonKey(includeIfNull: false) String? get description;@JsonKey(includeIfNull: false) DateTime? get createdAt;@JsonKey(includeIfNull: false) DateTime? get updatedAt;
/// Create a copy of Medium
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediumCopyWith<Medium> get copyWith => _$MediumCopyWithImpl<Medium>(this as Medium, _$identity);

  /// Serializes this Medium to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Medium&&(identical(other.id, id) || other.id == id)&&(identical(other.mediumTitle, mediumTitle) || other.mediumTitle == mediumTitle)&&(identical(other.mediumPath, mediumPath) || other.mediumPath == mediumPath)&&(identical(other.mediumUrl, mediumUrl) || other.mediumUrl == mediumUrl)&&(identical(other.mediumMimeType, mediumMimeType) || other.mediumMimeType == mediumMimeType)&&(identical(other.mediumStatus, mediumStatus) || other.mediumStatus == mediumStatus)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userOrgId, userOrgId) || other.userOrgId == userOrgId)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,mediumTitle,mediumPath,mediumUrl,mediumMimeType,mediumStatus,userId,userOrgId,description,createdAt,updatedAt);

@override
String toString() {
  return 'Medium(id: $id, mediumTitle: $mediumTitle, mediumPath: $mediumPath, mediumUrl: $mediumUrl, mediumMimeType: $mediumMimeType, mediumStatus: $mediumStatus, userId: $userId, userOrgId: $userOrgId, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $MediumCopyWith<$Res>  {
  factory $MediumCopyWith(Medium value, $Res Function(Medium) _then) = _$MediumCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) int? id,@JsonKey(includeIfNull: false) String? mediumTitle,@JsonKey(includeIfNull: false) String? mediumPath,@JsonKey(includeIfNull: false) String? mediumUrl,@JsonKey(includeIfNull: false) String? mediumMimeType,@JsonKey(includeIfNull: false) MediumStatus? mediumStatus,@JsonKey(includeIfNull: false) int? userId,@JsonKey(includeIfNull: false) int? userOrgId,@JsonKey(includeIfNull: false) String? description,@JsonKey(includeIfNull: false) DateTime? createdAt,@JsonKey(includeIfNull: false) DateTime? updatedAt
});


$MediumStatusCopyWith<$Res>? get mediumStatus;

}
/// @nodoc
class _$MediumCopyWithImpl<$Res>
    implements $MediumCopyWith<$Res> {
  _$MediumCopyWithImpl(this._self, this._then);

  final Medium _self;
  final $Res Function(Medium) _then;

/// Create a copy of Medium
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? mediumTitle = freezed,Object? mediumPath = freezed,Object? mediumUrl = freezed,Object? mediumMimeType = freezed,Object? mediumStatus = freezed,Object? userId = freezed,Object? userOrgId = freezed,Object? description = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,mediumTitle: freezed == mediumTitle ? _self.mediumTitle : mediumTitle // ignore: cast_nullable_to_non_nullable
as String?,mediumPath: freezed == mediumPath ? _self.mediumPath : mediumPath // ignore: cast_nullable_to_non_nullable
as String?,mediumUrl: freezed == mediumUrl ? _self.mediumUrl : mediumUrl // ignore: cast_nullable_to_non_nullable
as String?,mediumMimeType: freezed == mediumMimeType ? _self.mediumMimeType : mediumMimeType // ignore: cast_nullable_to_non_nullable
as String?,mediumStatus: freezed == mediumStatus ? _self.mediumStatus : mediumStatus // ignore: cast_nullable_to_non_nullable
as MediumStatus?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,userOrgId: freezed == userOrgId ? _self.userOrgId : userOrgId // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of Medium
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediumStatusCopyWith<$Res>? get mediumStatus {
    if (_self.mediumStatus == null) {
    return null;
  }

  return $MediumStatusCopyWith<$Res>(_self.mediumStatus!, (value) {
    return _then(_self.copyWith(mediumStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [Medium].
extension MediumPatterns on Medium {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Medium value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Medium() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Medium value)  $default,){
final _that = this;
switch (_that) {
case _Medium():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Medium value)?  $default,){
final _that = this;
switch (_that) {
case _Medium() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? mediumTitle, @JsonKey(includeIfNull: false)  String? mediumPath, @JsonKey(includeIfNull: false)  String? mediumUrl, @JsonKey(includeIfNull: false)  String? mediumMimeType, @JsonKey(includeIfNull: false)  MediumStatus? mediumStatus, @JsonKey(includeIfNull: false)  int? userId, @JsonKey(includeIfNull: false)  int? userOrgId, @JsonKey(includeIfNull: false)  String? description, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Medium() when $default != null:
return $default(_that.id,_that.mediumTitle,_that.mediumPath,_that.mediumUrl,_that.mediumMimeType,_that.mediumStatus,_that.userId,_that.userOrgId,_that.description,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? mediumTitle, @JsonKey(includeIfNull: false)  String? mediumPath, @JsonKey(includeIfNull: false)  String? mediumUrl, @JsonKey(includeIfNull: false)  String? mediumMimeType, @JsonKey(includeIfNull: false)  MediumStatus? mediumStatus, @JsonKey(includeIfNull: false)  int? userId, @JsonKey(includeIfNull: false)  int? userOrgId, @JsonKey(includeIfNull: false)  String? description, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Medium():
return $default(_that.id,_that.mediumTitle,_that.mediumPath,_that.mediumUrl,_that.mediumMimeType,_that.mediumStatus,_that.userId,_that.userOrgId,_that.description,_that.createdAt,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? mediumTitle, @JsonKey(includeIfNull: false)  String? mediumPath, @JsonKey(includeIfNull: false)  String? mediumUrl, @JsonKey(includeIfNull: false)  String? mediumMimeType, @JsonKey(includeIfNull: false)  MediumStatus? mediumStatus, @JsonKey(includeIfNull: false)  int? userId, @JsonKey(includeIfNull: false)  int? userOrgId, @JsonKey(includeIfNull: false)  String? description, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Medium() when $default != null:
return $default(_that.id,_that.mediumTitle,_that.mediumPath,_that.mediumUrl,_that.mediumMimeType,_that.mediumStatus,_that.userId,_that.userOrgId,_that.description,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Medium implements Medium {
  const _Medium({@JsonKey(includeIfNull: false) this.id, @JsonKey(includeIfNull: false) this.mediumTitle, @JsonKey(includeIfNull: false) this.mediumPath, @JsonKey(includeIfNull: false) this.mediumUrl, @JsonKey(includeIfNull: false) this.mediumMimeType, @JsonKey(includeIfNull: false) this.mediumStatus, @JsonKey(includeIfNull: false) this.userId, @JsonKey(includeIfNull: false) this.userOrgId, @JsonKey(includeIfNull: false) this.description, @JsonKey(includeIfNull: false) this.createdAt, @JsonKey(includeIfNull: false) this.updatedAt});
  factory _Medium.fromJson(Map<String, dynamic> json) => _$MediumFromJson(json);

@override@JsonKey(includeIfNull: false) final  int? id;
@override@JsonKey(includeIfNull: false) final  String? mediumTitle;
@override@JsonKey(includeIfNull: false) final  String? mediumPath;
@override@JsonKey(includeIfNull: false) final  String? mediumUrl;
@override@JsonKey(includeIfNull: false) final  String? mediumMimeType;
@override@JsonKey(includeIfNull: false) final  MediumStatus? mediumStatus;
@override@JsonKey(includeIfNull: false) final  int? userId;
@override@JsonKey(includeIfNull: false) final  int? userOrgId;
@override@JsonKey(includeIfNull: false) final  String? description;
@override@JsonKey(includeIfNull: false) final  DateTime? createdAt;
@override@JsonKey(includeIfNull: false) final  DateTime? updatedAt;

/// Create a copy of Medium
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediumCopyWith<_Medium> get copyWith => __$MediumCopyWithImpl<_Medium>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediumToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Medium&&(identical(other.id, id) || other.id == id)&&(identical(other.mediumTitle, mediumTitle) || other.mediumTitle == mediumTitle)&&(identical(other.mediumPath, mediumPath) || other.mediumPath == mediumPath)&&(identical(other.mediumUrl, mediumUrl) || other.mediumUrl == mediumUrl)&&(identical(other.mediumMimeType, mediumMimeType) || other.mediumMimeType == mediumMimeType)&&(identical(other.mediumStatus, mediumStatus) || other.mediumStatus == mediumStatus)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userOrgId, userOrgId) || other.userOrgId == userOrgId)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,mediumTitle,mediumPath,mediumUrl,mediumMimeType,mediumStatus,userId,userOrgId,description,createdAt,updatedAt);

@override
String toString() {
  return 'Medium(id: $id, mediumTitle: $mediumTitle, mediumPath: $mediumPath, mediumUrl: $mediumUrl, mediumMimeType: $mediumMimeType, mediumStatus: $mediumStatus, userId: $userId, userOrgId: $userOrgId, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$MediumCopyWith<$Res> implements $MediumCopyWith<$Res> {
  factory _$MediumCopyWith(_Medium value, $Res Function(_Medium) _then) = __$MediumCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) int? id,@JsonKey(includeIfNull: false) String? mediumTitle,@JsonKey(includeIfNull: false) String? mediumPath,@JsonKey(includeIfNull: false) String? mediumUrl,@JsonKey(includeIfNull: false) String? mediumMimeType,@JsonKey(includeIfNull: false) MediumStatus? mediumStatus,@JsonKey(includeIfNull: false) int? userId,@JsonKey(includeIfNull: false) int? userOrgId,@JsonKey(includeIfNull: false) String? description,@JsonKey(includeIfNull: false) DateTime? createdAt,@JsonKey(includeIfNull: false) DateTime? updatedAt
});


@override $MediumStatusCopyWith<$Res>? get mediumStatus;

}
/// @nodoc
class __$MediumCopyWithImpl<$Res>
    implements _$MediumCopyWith<$Res> {
  __$MediumCopyWithImpl(this._self, this._then);

  final _Medium _self;
  final $Res Function(_Medium) _then;

/// Create a copy of Medium
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? mediumTitle = freezed,Object? mediumPath = freezed,Object? mediumUrl = freezed,Object? mediumMimeType = freezed,Object? mediumStatus = freezed,Object? userId = freezed,Object? userOrgId = freezed,Object? description = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Medium(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,mediumTitle: freezed == mediumTitle ? _self.mediumTitle : mediumTitle // ignore: cast_nullable_to_non_nullable
as String?,mediumPath: freezed == mediumPath ? _self.mediumPath : mediumPath // ignore: cast_nullable_to_non_nullable
as String?,mediumUrl: freezed == mediumUrl ? _self.mediumUrl : mediumUrl // ignore: cast_nullable_to_non_nullable
as String?,mediumMimeType: freezed == mediumMimeType ? _self.mediumMimeType : mediumMimeType // ignore: cast_nullable_to_non_nullable
as String?,mediumStatus: freezed == mediumStatus ? _self.mediumStatus : mediumStatus // ignore: cast_nullable_to_non_nullable
as MediumStatus?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,userOrgId: freezed == userOrgId ? _self.userOrgId : userOrgId // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Medium
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediumStatusCopyWith<$Res>? get mediumStatus {
    if (_self.mediumStatus == null) {
    return null;
  }

  return $MediumStatusCopyWith<$Res>(_self.mediumStatus!, (value) {
    return _then(_self.copyWith(mediumStatus: value));
  });
}
}


/// @nodoc
mixin _$MediumStatus {

@JsonKey(includeIfNull: false) int? get id;@JsonKey(includeIfNull: false) String? get status;
/// Create a copy of MediumStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediumStatusCopyWith<MediumStatus> get copyWith => _$MediumStatusCopyWithImpl<MediumStatus>(this as MediumStatus, _$identity);

  /// Serializes this MediumStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediumStatus&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status);

@override
String toString() {
  return 'MediumStatus(id: $id, status: $status)';
}


}

/// @nodoc
abstract mixin class $MediumStatusCopyWith<$Res>  {
  factory $MediumStatusCopyWith(MediumStatus value, $Res Function(MediumStatus) _then) = _$MediumStatusCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) int? id,@JsonKey(includeIfNull: false) String? status
});




}
/// @nodoc
class _$MediumStatusCopyWithImpl<$Res>
    implements $MediumStatusCopyWith<$Res> {
  _$MediumStatusCopyWithImpl(this._self, this._then);

  final MediumStatus _self;
  final $Res Function(MediumStatus) _then;

/// Create a copy of MediumStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MediumStatus].
extension MediumStatusPatterns on MediumStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediumStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediumStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediumStatus value)  $default,){
final _that = this;
switch (_that) {
case _MediumStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediumStatus value)?  $default,){
final _that = this;
switch (_that) {
case _MediumStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediumStatus() when $default != null:
return $default(_that.id,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? status)  $default,) {final _that = this;
switch (_that) {
case _MediumStatus():
return $default(_that.id,_that.status);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? status)?  $default,) {final _that = this;
switch (_that) {
case _MediumStatus() when $default != null:
return $default(_that.id,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MediumStatus implements MediumStatus {
  const _MediumStatus({@JsonKey(includeIfNull: false) this.id, @JsonKey(includeIfNull: false) this.status});
  factory _MediumStatus.fromJson(Map<String, dynamic> json) => _$MediumStatusFromJson(json);

@override@JsonKey(includeIfNull: false) final  int? id;
@override@JsonKey(includeIfNull: false) final  String? status;

/// Create a copy of MediumStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediumStatusCopyWith<_MediumStatus> get copyWith => __$MediumStatusCopyWithImpl<_MediumStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediumStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediumStatus&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status);

@override
String toString() {
  return 'MediumStatus(id: $id, status: $status)';
}


}

/// @nodoc
abstract mixin class _$MediumStatusCopyWith<$Res> implements $MediumStatusCopyWith<$Res> {
  factory _$MediumStatusCopyWith(_MediumStatus value, $Res Function(_MediumStatus) _then) = __$MediumStatusCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) int? id,@JsonKey(includeIfNull: false) String? status
});




}
/// @nodoc
class __$MediumStatusCopyWithImpl<$Res>
    implements _$MediumStatusCopyWith<$Res> {
  __$MediumStatusCopyWithImpl(this._self, this._then);

  final _MediumStatus _self;
  final $Res Function(_MediumStatus) _then;

/// Create a copy of MediumStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? status = freezed,}) {
  return _then(_MediumStatus(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
