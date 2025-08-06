// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_medium.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyMedium {

@JsonKey(includeIfNull: false) int? get sequence;@JsonKey(includeIfNull: false) int? get mediumId;@JsonKey(includeIfNull: false) bool? get isMain;@JsonKey(includeIfNull: false) double? get screenX;@JsonKey(includeIfNull: false) double? get screenY;@JsonKey(includeIfNull: false) String? get customTitle;@JsonKey(includeIfNull: false) String? get mediumPath;@JsonKey(includeIfNull: false) String? get mediumUrl;@JsonKey(includeIfNull: false) String? get mediumMimeType;@JsonKey(includeIfNull: false) int? get authorID;@JsonKey(includeIfNull: false) int? get authorOrgID;@JsonKey(includeIfNull: false) DateTime? get createdAt;@JsonKey(includeIfNull: false) DateTime? get updatedAt;
/// Create a copy of MyMedium
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyMediumCopyWith<MyMedium> get copyWith => _$MyMediumCopyWithImpl<MyMedium>(this as MyMedium, _$identity);

  /// Serializes this MyMedium to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyMedium&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.mediumId, mediumId) || other.mediumId == mediumId)&&(identical(other.isMain, isMain) || other.isMain == isMain)&&(identical(other.screenX, screenX) || other.screenX == screenX)&&(identical(other.screenY, screenY) || other.screenY == screenY)&&(identical(other.customTitle, customTitle) || other.customTitle == customTitle)&&(identical(other.mediumPath, mediumPath) || other.mediumPath == mediumPath)&&(identical(other.mediumUrl, mediumUrl) || other.mediumUrl == mediumUrl)&&(identical(other.mediumMimeType, mediumMimeType) || other.mediumMimeType == mediumMimeType)&&(identical(other.authorID, authorID) || other.authorID == authorID)&&(identical(other.authorOrgID, authorOrgID) || other.authorOrgID == authorOrgID)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sequence,mediumId,isMain,screenX,screenY,customTitle,mediumPath,mediumUrl,mediumMimeType,authorID,authorOrgID,createdAt,updatedAt);

@override
String toString() {
  return 'MyMedium(sequence: $sequence, mediumId: $mediumId, isMain: $isMain, screenX: $screenX, screenY: $screenY, customTitle: $customTitle, mediumPath: $mediumPath, mediumUrl: $mediumUrl, mediumMimeType: $mediumMimeType, authorID: $authorID, authorOrgID: $authorOrgID, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $MyMediumCopyWith<$Res>  {
  factory $MyMediumCopyWith(MyMedium value, $Res Function(MyMedium) _then) = _$MyMediumCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) int? sequence,@JsonKey(includeIfNull: false) int? mediumId,@JsonKey(includeIfNull: false) bool? isMain,@JsonKey(includeIfNull: false) double? screenX,@JsonKey(includeIfNull: false) double? screenY,@JsonKey(includeIfNull: false) String? customTitle,@JsonKey(includeIfNull: false) String? mediumPath,@JsonKey(includeIfNull: false) String? mediumUrl,@JsonKey(includeIfNull: false) String? mediumMimeType,@JsonKey(includeIfNull: false) int? authorID,@JsonKey(includeIfNull: false) int? authorOrgID,@JsonKey(includeIfNull: false) DateTime? createdAt,@JsonKey(includeIfNull: false) DateTime? updatedAt
});




}
/// @nodoc
class _$MyMediumCopyWithImpl<$Res>
    implements $MyMediumCopyWith<$Res> {
  _$MyMediumCopyWithImpl(this._self, this._then);

  final MyMedium _self;
  final $Res Function(MyMedium) _then;

/// Create a copy of MyMedium
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sequence = freezed,Object? mediumId = freezed,Object? isMain = freezed,Object? screenX = freezed,Object? screenY = freezed,Object? customTitle = freezed,Object? mediumPath = freezed,Object? mediumUrl = freezed,Object? mediumMimeType = freezed,Object? authorID = freezed,Object? authorOrgID = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
sequence: freezed == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int?,mediumId: freezed == mediumId ? _self.mediumId : mediumId // ignore: cast_nullable_to_non_nullable
as int?,isMain: freezed == isMain ? _self.isMain : isMain // ignore: cast_nullable_to_non_nullable
as bool?,screenX: freezed == screenX ? _self.screenX : screenX // ignore: cast_nullable_to_non_nullable
as double?,screenY: freezed == screenY ? _self.screenY : screenY // ignore: cast_nullable_to_non_nullable
as double?,customTitle: freezed == customTitle ? _self.customTitle : customTitle // ignore: cast_nullable_to_non_nullable
as String?,mediumPath: freezed == mediumPath ? _self.mediumPath : mediumPath // ignore: cast_nullable_to_non_nullable
as String?,mediumUrl: freezed == mediumUrl ? _self.mediumUrl : mediumUrl // ignore: cast_nullable_to_non_nullable
as String?,mediumMimeType: freezed == mediumMimeType ? _self.mediumMimeType : mediumMimeType // ignore: cast_nullable_to_non_nullable
as String?,authorID: freezed == authorID ? _self.authorID : authorID // ignore: cast_nullable_to_non_nullable
as int?,authorOrgID: freezed == authorOrgID ? _self.authorOrgID : authorOrgID // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyMedium].
extension MyMediumPatterns on MyMedium {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyMedium value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyMedium() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyMedium value)  $default,){
final _that = this;
switch (_that) {
case _MyMedium():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyMedium value)?  $default,){
final _that = this;
switch (_that) {
case _MyMedium() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? sequence, @JsonKey(includeIfNull: false)  int? mediumId, @JsonKey(includeIfNull: false)  bool? isMain, @JsonKey(includeIfNull: false)  double? screenX, @JsonKey(includeIfNull: false)  double? screenY, @JsonKey(includeIfNull: false)  String? customTitle, @JsonKey(includeIfNull: false)  String? mediumPath, @JsonKey(includeIfNull: false)  String? mediumUrl, @JsonKey(includeIfNull: false)  String? mediumMimeType, @JsonKey(includeIfNull: false)  int? authorID, @JsonKey(includeIfNull: false)  int? authorOrgID, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyMedium() when $default != null:
return $default(_that.sequence,_that.mediumId,_that.isMain,_that.screenX,_that.screenY,_that.customTitle,_that.mediumPath,_that.mediumUrl,_that.mediumMimeType,_that.authorID,_that.authorOrgID,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? sequence, @JsonKey(includeIfNull: false)  int? mediumId, @JsonKey(includeIfNull: false)  bool? isMain, @JsonKey(includeIfNull: false)  double? screenX, @JsonKey(includeIfNull: false)  double? screenY, @JsonKey(includeIfNull: false)  String? customTitle, @JsonKey(includeIfNull: false)  String? mediumPath, @JsonKey(includeIfNull: false)  String? mediumUrl, @JsonKey(includeIfNull: false)  String? mediumMimeType, @JsonKey(includeIfNull: false)  int? authorID, @JsonKey(includeIfNull: false)  int? authorOrgID, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _MyMedium():
return $default(_that.sequence,_that.mediumId,_that.isMain,_that.screenX,_that.screenY,_that.customTitle,_that.mediumPath,_that.mediumUrl,_that.mediumMimeType,_that.authorID,_that.authorOrgID,_that.createdAt,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  int? sequence, @JsonKey(includeIfNull: false)  int? mediumId, @JsonKey(includeIfNull: false)  bool? isMain, @JsonKey(includeIfNull: false)  double? screenX, @JsonKey(includeIfNull: false)  double? screenY, @JsonKey(includeIfNull: false)  String? customTitle, @JsonKey(includeIfNull: false)  String? mediumPath, @JsonKey(includeIfNull: false)  String? mediumUrl, @JsonKey(includeIfNull: false)  String? mediumMimeType, @JsonKey(includeIfNull: false)  int? authorID, @JsonKey(includeIfNull: false)  int? authorOrgID, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _MyMedium() when $default != null:
return $default(_that.sequence,_that.mediumId,_that.isMain,_that.screenX,_that.screenY,_that.customTitle,_that.mediumPath,_that.mediumUrl,_that.mediumMimeType,_that.authorID,_that.authorOrgID,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyMedium implements MyMedium {
  const _MyMedium({@JsonKey(includeIfNull: false) this.sequence, @JsonKey(includeIfNull: false) this.mediumId, @JsonKey(includeIfNull: false) this.isMain, @JsonKey(includeIfNull: false) this.screenX, @JsonKey(includeIfNull: false) this.screenY, @JsonKey(includeIfNull: false) this.customTitle, @JsonKey(includeIfNull: false) this.mediumPath, @JsonKey(includeIfNull: false) this.mediumUrl, @JsonKey(includeIfNull: false) this.mediumMimeType, @JsonKey(includeIfNull: false) this.authorID, @JsonKey(includeIfNull: false) this.authorOrgID, @JsonKey(includeIfNull: false) this.createdAt, @JsonKey(includeIfNull: false) this.updatedAt});
  factory _MyMedium.fromJson(Map<String, dynamic> json) => _$MyMediumFromJson(json);

@override@JsonKey(includeIfNull: false) final  int? sequence;
@override@JsonKey(includeIfNull: false) final  int? mediumId;
@override@JsonKey(includeIfNull: false) final  bool? isMain;
@override@JsonKey(includeIfNull: false) final  double? screenX;
@override@JsonKey(includeIfNull: false) final  double? screenY;
@override@JsonKey(includeIfNull: false) final  String? customTitle;
@override@JsonKey(includeIfNull: false) final  String? mediumPath;
@override@JsonKey(includeIfNull: false) final  String? mediumUrl;
@override@JsonKey(includeIfNull: false) final  String? mediumMimeType;
@override@JsonKey(includeIfNull: false) final  int? authorID;
@override@JsonKey(includeIfNull: false) final  int? authorOrgID;
@override@JsonKey(includeIfNull: false) final  DateTime? createdAt;
@override@JsonKey(includeIfNull: false) final  DateTime? updatedAt;

/// Create a copy of MyMedium
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyMediumCopyWith<_MyMedium> get copyWith => __$MyMediumCopyWithImpl<_MyMedium>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyMediumToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyMedium&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.mediumId, mediumId) || other.mediumId == mediumId)&&(identical(other.isMain, isMain) || other.isMain == isMain)&&(identical(other.screenX, screenX) || other.screenX == screenX)&&(identical(other.screenY, screenY) || other.screenY == screenY)&&(identical(other.customTitle, customTitle) || other.customTitle == customTitle)&&(identical(other.mediumPath, mediumPath) || other.mediumPath == mediumPath)&&(identical(other.mediumUrl, mediumUrl) || other.mediumUrl == mediumUrl)&&(identical(other.mediumMimeType, mediumMimeType) || other.mediumMimeType == mediumMimeType)&&(identical(other.authorID, authorID) || other.authorID == authorID)&&(identical(other.authorOrgID, authorOrgID) || other.authorOrgID == authorOrgID)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sequence,mediumId,isMain,screenX,screenY,customTitle,mediumPath,mediumUrl,mediumMimeType,authorID,authorOrgID,createdAt,updatedAt);

@override
String toString() {
  return 'MyMedium(sequence: $sequence, mediumId: $mediumId, isMain: $isMain, screenX: $screenX, screenY: $screenY, customTitle: $customTitle, mediumPath: $mediumPath, mediumUrl: $mediumUrl, mediumMimeType: $mediumMimeType, authorID: $authorID, authorOrgID: $authorOrgID, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$MyMediumCopyWith<$Res> implements $MyMediumCopyWith<$Res> {
  factory _$MyMediumCopyWith(_MyMedium value, $Res Function(_MyMedium) _then) = __$MyMediumCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) int? sequence,@JsonKey(includeIfNull: false) int? mediumId,@JsonKey(includeIfNull: false) bool? isMain,@JsonKey(includeIfNull: false) double? screenX,@JsonKey(includeIfNull: false) double? screenY,@JsonKey(includeIfNull: false) String? customTitle,@JsonKey(includeIfNull: false) String? mediumPath,@JsonKey(includeIfNull: false) String? mediumUrl,@JsonKey(includeIfNull: false) String? mediumMimeType,@JsonKey(includeIfNull: false) int? authorID,@JsonKey(includeIfNull: false) int? authorOrgID,@JsonKey(includeIfNull: false) DateTime? createdAt,@JsonKey(includeIfNull: false) DateTime? updatedAt
});




}
/// @nodoc
class __$MyMediumCopyWithImpl<$Res>
    implements _$MyMediumCopyWith<$Res> {
  __$MyMediumCopyWithImpl(this._self, this._then);

  final _MyMedium _self;
  final $Res Function(_MyMedium) _then;

/// Create a copy of MyMedium
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sequence = freezed,Object? mediumId = freezed,Object? isMain = freezed,Object? screenX = freezed,Object? screenY = freezed,Object? customTitle = freezed,Object? mediumPath = freezed,Object? mediumUrl = freezed,Object? mediumMimeType = freezed,Object? authorID = freezed,Object? authorOrgID = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_MyMedium(
sequence: freezed == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int?,mediumId: freezed == mediumId ? _self.mediumId : mediumId // ignore: cast_nullable_to_non_nullable
as int?,isMain: freezed == isMain ? _self.isMain : isMain // ignore: cast_nullable_to_non_nullable
as bool?,screenX: freezed == screenX ? _self.screenX : screenX // ignore: cast_nullable_to_non_nullable
as double?,screenY: freezed == screenY ? _self.screenY : screenY // ignore: cast_nullable_to_non_nullable
as double?,customTitle: freezed == customTitle ? _self.customTitle : customTitle // ignore: cast_nullable_to_non_nullable
as String?,mediumPath: freezed == mediumPath ? _self.mediumPath : mediumPath // ignore: cast_nullable_to_non_nullable
as String?,mediumUrl: freezed == mediumUrl ? _self.mediumUrl : mediumUrl // ignore: cast_nullable_to_non_nullable
as String?,mediumMimeType: freezed == mediumMimeType ? _self.mediumMimeType : mediumMimeType // ignore: cast_nullable_to_non_nullable
as String?,authorID: freezed == authorID ? _self.authorID : authorID // ignore: cast_nullable_to_non_nullable
as int?,authorOrgID: freezed == authorOrgID ? _self.authorOrgID : authorOrgID // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
