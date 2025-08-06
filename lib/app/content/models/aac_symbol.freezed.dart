// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aac_symbol.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AACSymbol {

@JsonKey(includeIfNull: false) int? get id;@JsonKey(includeIfNull: false) String? get symbolTitle;@JsonKey(includeIfNull: false) String? get symbolExcerpt;@JsonKey(includeIfNull: false) AACSymbolStatus? get symbolStatus;@JsonKey(includeIfNull: false) bool? get isCommentOpen;@JsonKey(includeIfNull: false) Medium? get medium;@JsonKey(includeIfNull: false) int? get commentCount;@JsonKey(includeIfNull: false) int? get likeCount;@JsonKey(includeIfNull: false) AACSymbolSystem? get symbolSystem;@JsonKey(includeIfNull: false) String? get description;@JsonKey(includeIfNull: false) DateTime? get createdAt;@JsonKey(includeIfNull: false) DateTime? get updatedAt;
/// Create a copy of AACSymbol
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AACSymbolCopyWith<AACSymbol> get copyWith => _$AACSymbolCopyWithImpl<AACSymbol>(this as AACSymbol, _$identity);

  /// Serializes this AACSymbol to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AACSymbol&&(identical(other.id, id) || other.id == id)&&(identical(other.symbolTitle, symbolTitle) || other.symbolTitle == symbolTitle)&&(identical(other.symbolExcerpt, symbolExcerpt) || other.symbolExcerpt == symbolExcerpt)&&(identical(other.symbolStatus, symbolStatus) || other.symbolStatus == symbolStatus)&&(identical(other.isCommentOpen, isCommentOpen) || other.isCommentOpen == isCommentOpen)&&(identical(other.medium, medium) || other.medium == medium)&&(identical(other.commentCount, commentCount) || other.commentCount == commentCount)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.symbolSystem, symbolSystem) || other.symbolSystem == symbolSystem)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,symbolTitle,symbolExcerpt,symbolStatus,isCommentOpen,medium,commentCount,likeCount,symbolSystem,description,createdAt,updatedAt);

@override
String toString() {
  return 'AACSymbol(id: $id, symbolTitle: $symbolTitle, symbolExcerpt: $symbolExcerpt, symbolStatus: $symbolStatus, isCommentOpen: $isCommentOpen, medium: $medium, commentCount: $commentCount, likeCount: $likeCount, symbolSystem: $symbolSystem, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $AACSymbolCopyWith<$Res>  {
  factory $AACSymbolCopyWith(AACSymbol value, $Res Function(AACSymbol) _then) = _$AACSymbolCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) int? id,@JsonKey(includeIfNull: false) String? symbolTitle,@JsonKey(includeIfNull: false) String? symbolExcerpt,@JsonKey(includeIfNull: false) AACSymbolStatus? symbolStatus,@JsonKey(includeIfNull: false) bool? isCommentOpen,@JsonKey(includeIfNull: false) Medium? medium,@JsonKey(includeIfNull: false) int? commentCount,@JsonKey(includeIfNull: false) int? likeCount,@JsonKey(includeIfNull: false) AACSymbolSystem? symbolSystem,@JsonKey(includeIfNull: false) String? description,@JsonKey(includeIfNull: false) DateTime? createdAt,@JsonKey(includeIfNull: false) DateTime? updatedAt
});


$AACSymbolStatusCopyWith<$Res>? get symbolStatus;$MediumCopyWith<$Res>? get medium;$AACSymbolSystemCopyWith<$Res>? get symbolSystem;

}
/// @nodoc
class _$AACSymbolCopyWithImpl<$Res>
    implements $AACSymbolCopyWith<$Res> {
  _$AACSymbolCopyWithImpl(this._self, this._then);

  final AACSymbol _self;
  final $Res Function(AACSymbol) _then;

/// Create a copy of AACSymbol
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? symbolTitle = freezed,Object? symbolExcerpt = freezed,Object? symbolStatus = freezed,Object? isCommentOpen = freezed,Object? medium = freezed,Object? commentCount = freezed,Object? likeCount = freezed,Object? symbolSystem = freezed,Object? description = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,symbolTitle: freezed == symbolTitle ? _self.symbolTitle : symbolTitle // ignore: cast_nullable_to_non_nullable
as String?,symbolExcerpt: freezed == symbolExcerpt ? _self.symbolExcerpt : symbolExcerpt // ignore: cast_nullable_to_non_nullable
as String?,symbolStatus: freezed == symbolStatus ? _self.symbolStatus : symbolStatus // ignore: cast_nullable_to_non_nullable
as AACSymbolStatus?,isCommentOpen: freezed == isCommentOpen ? _self.isCommentOpen : isCommentOpen // ignore: cast_nullable_to_non_nullable
as bool?,medium: freezed == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as Medium?,commentCount: freezed == commentCount ? _self.commentCount : commentCount // ignore: cast_nullable_to_non_nullable
as int?,likeCount: freezed == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int?,symbolSystem: freezed == symbolSystem ? _self.symbolSystem : symbolSystem // ignore: cast_nullable_to_non_nullable
as AACSymbolSystem?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of AACSymbol
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AACSymbolStatusCopyWith<$Res>? get symbolStatus {
    if (_self.symbolStatus == null) {
    return null;
  }

  return $AACSymbolStatusCopyWith<$Res>(_self.symbolStatus!, (value) {
    return _then(_self.copyWith(symbolStatus: value));
  });
}/// Create a copy of AACSymbol
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediumCopyWith<$Res>? get medium {
    if (_self.medium == null) {
    return null;
  }

  return $MediumCopyWith<$Res>(_self.medium!, (value) {
    return _then(_self.copyWith(medium: value));
  });
}/// Create a copy of AACSymbol
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AACSymbolSystemCopyWith<$Res>? get symbolSystem {
    if (_self.symbolSystem == null) {
    return null;
  }

  return $AACSymbolSystemCopyWith<$Res>(_self.symbolSystem!, (value) {
    return _then(_self.copyWith(symbolSystem: value));
  });
}
}


/// Adds pattern-matching-related methods to [AACSymbol].
extension AACSymbolPatterns on AACSymbol {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AACSymbol value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AACSymbol() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AACSymbol value)  $default,){
final _that = this;
switch (_that) {
case _AACSymbol():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AACSymbol value)?  $default,){
final _that = this;
switch (_that) {
case _AACSymbol() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? symbolTitle, @JsonKey(includeIfNull: false)  String? symbolExcerpt, @JsonKey(includeIfNull: false)  AACSymbolStatus? symbolStatus, @JsonKey(includeIfNull: false)  bool? isCommentOpen, @JsonKey(includeIfNull: false)  Medium? medium, @JsonKey(includeIfNull: false)  int? commentCount, @JsonKey(includeIfNull: false)  int? likeCount, @JsonKey(includeIfNull: false)  AACSymbolSystem? symbolSystem, @JsonKey(includeIfNull: false)  String? description, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AACSymbol() when $default != null:
return $default(_that.id,_that.symbolTitle,_that.symbolExcerpt,_that.symbolStatus,_that.isCommentOpen,_that.medium,_that.commentCount,_that.likeCount,_that.symbolSystem,_that.description,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? symbolTitle, @JsonKey(includeIfNull: false)  String? symbolExcerpt, @JsonKey(includeIfNull: false)  AACSymbolStatus? symbolStatus, @JsonKey(includeIfNull: false)  bool? isCommentOpen, @JsonKey(includeIfNull: false)  Medium? medium, @JsonKey(includeIfNull: false)  int? commentCount, @JsonKey(includeIfNull: false)  int? likeCount, @JsonKey(includeIfNull: false)  AACSymbolSystem? symbolSystem, @JsonKey(includeIfNull: false)  String? description, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _AACSymbol():
return $default(_that.id,_that.symbolTitle,_that.symbolExcerpt,_that.symbolStatus,_that.isCommentOpen,_that.medium,_that.commentCount,_that.likeCount,_that.symbolSystem,_that.description,_that.createdAt,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? symbolTitle, @JsonKey(includeIfNull: false)  String? symbolExcerpt, @JsonKey(includeIfNull: false)  AACSymbolStatus? symbolStatus, @JsonKey(includeIfNull: false)  bool? isCommentOpen, @JsonKey(includeIfNull: false)  Medium? medium, @JsonKey(includeIfNull: false)  int? commentCount, @JsonKey(includeIfNull: false)  int? likeCount, @JsonKey(includeIfNull: false)  AACSymbolSystem? symbolSystem, @JsonKey(includeIfNull: false)  String? description, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _AACSymbol() when $default != null:
return $default(_that.id,_that.symbolTitle,_that.symbolExcerpt,_that.symbolStatus,_that.isCommentOpen,_that.medium,_that.commentCount,_that.likeCount,_that.symbolSystem,_that.description,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AACSymbol implements AACSymbol {
  const _AACSymbol({@JsonKey(includeIfNull: false) this.id, @JsonKey(includeIfNull: false) this.symbolTitle, @JsonKey(includeIfNull: false) this.symbolExcerpt, @JsonKey(includeIfNull: false) this.symbolStatus, @JsonKey(includeIfNull: false) this.isCommentOpen, @JsonKey(includeIfNull: false) this.medium, @JsonKey(includeIfNull: false) this.commentCount, @JsonKey(includeIfNull: false) this.likeCount, @JsonKey(includeIfNull: false) this.symbolSystem, @JsonKey(includeIfNull: false) this.description, @JsonKey(includeIfNull: false) this.createdAt, @JsonKey(includeIfNull: false) this.updatedAt});
  factory _AACSymbol.fromJson(Map<String, dynamic> json) => _$AACSymbolFromJson(json);

@override@JsonKey(includeIfNull: false) final  int? id;
@override@JsonKey(includeIfNull: false) final  String? symbolTitle;
@override@JsonKey(includeIfNull: false) final  String? symbolExcerpt;
@override@JsonKey(includeIfNull: false) final  AACSymbolStatus? symbolStatus;
@override@JsonKey(includeIfNull: false) final  bool? isCommentOpen;
@override@JsonKey(includeIfNull: false) final  Medium? medium;
@override@JsonKey(includeIfNull: false) final  int? commentCount;
@override@JsonKey(includeIfNull: false) final  int? likeCount;
@override@JsonKey(includeIfNull: false) final  AACSymbolSystem? symbolSystem;
@override@JsonKey(includeIfNull: false) final  String? description;
@override@JsonKey(includeIfNull: false) final  DateTime? createdAt;
@override@JsonKey(includeIfNull: false) final  DateTime? updatedAt;

/// Create a copy of AACSymbol
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AACSymbolCopyWith<_AACSymbol> get copyWith => __$AACSymbolCopyWithImpl<_AACSymbol>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AACSymbolToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AACSymbol&&(identical(other.id, id) || other.id == id)&&(identical(other.symbolTitle, symbolTitle) || other.symbolTitle == symbolTitle)&&(identical(other.symbolExcerpt, symbolExcerpt) || other.symbolExcerpt == symbolExcerpt)&&(identical(other.symbolStatus, symbolStatus) || other.symbolStatus == symbolStatus)&&(identical(other.isCommentOpen, isCommentOpen) || other.isCommentOpen == isCommentOpen)&&(identical(other.medium, medium) || other.medium == medium)&&(identical(other.commentCount, commentCount) || other.commentCount == commentCount)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.symbolSystem, symbolSystem) || other.symbolSystem == symbolSystem)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,symbolTitle,symbolExcerpt,symbolStatus,isCommentOpen,medium,commentCount,likeCount,symbolSystem,description,createdAt,updatedAt);

@override
String toString() {
  return 'AACSymbol(id: $id, symbolTitle: $symbolTitle, symbolExcerpt: $symbolExcerpt, symbolStatus: $symbolStatus, isCommentOpen: $isCommentOpen, medium: $medium, commentCount: $commentCount, likeCount: $likeCount, symbolSystem: $symbolSystem, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$AACSymbolCopyWith<$Res> implements $AACSymbolCopyWith<$Res> {
  factory _$AACSymbolCopyWith(_AACSymbol value, $Res Function(_AACSymbol) _then) = __$AACSymbolCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) int? id,@JsonKey(includeIfNull: false) String? symbolTitle,@JsonKey(includeIfNull: false) String? symbolExcerpt,@JsonKey(includeIfNull: false) AACSymbolStatus? symbolStatus,@JsonKey(includeIfNull: false) bool? isCommentOpen,@JsonKey(includeIfNull: false) Medium? medium,@JsonKey(includeIfNull: false) int? commentCount,@JsonKey(includeIfNull: false) int? likeCount,@JsonKey(includeIfNull: false) AACSymbolSystem? symbolSystem,@JsonKey(includeIfNull: false) String? description,@JsonKey(includeIfNull: false) DateTime? createdAt,@JsonKey(includeIfNull: false) DateTime? updatedAt
});


@override $AACSymbolStatusCopyWith<$Res>? get symbolStatus;@override $MediumCopyWith<$Res>? get medium;@override $AACSymbolSystemCopyWith<$Res>? get symbolSystem;

}
/// @nodoc
class __$AACSymbolCopyWithImpl<$Res>
    implements _$AACSymbolCopyWith<$Res> {
  __$AACSymbolCopyWithImpl(this._self, this._then);

  final _AACSymbol _self;
  final $Res Function(_AACSymbol) _then;

/// Create a copy of AACSymbol
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? symbolTitle = freezed,Object? symbolExcerpt = freezed,Object? symbolStatus = freezed,Object? isCommentOpen = freezed,Object? medium = freezed,Object? commentCount = freezed,Object? likeCount = freezed,Object? symbolSystem = freezed,Object? description = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_AACSymbol(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,symbolTitle: freezed == symbolTitle ? _self.symbolTitle : symbolTitle // ignore: cast_nullable_to_non_nullable
as String?,symbolExcerpt: freezed == symbolExcerpt ? _self.symbolExcerpt : symbolExcerpt // ignore: cast_nullable_to_non_nullable
as String?,symbolStatus: freezed == symbolStatus ? _self.symbolStatus : symbolStatus // ignore: cast_nullable_to_non_nullable
as AACSymbolStatus?,isCommentOpen: freezed == isCommentOpen ? _self.isCommentOpen : isCommentOpen // ignore: cast_nullable_to_non_nullable
as bool?,medium: freezed == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as Medium?,commentCount: freezed == commentCount ? _self.commentCount : commentCount // ignore: cast_nullable_to_non_nullable
as int?,likeCount: freezed == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int?,symbolSystem: freezed == symbolSystem ? _self.symbolSystem : symbolSystem // ignore: cast_nullable_to_non_nullable
as AACSymbolSystem?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of AACSymbol
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AACSymbolStatusCopyWith<$Res>? get symbolStatus {
    if (_self.symbolStatus == null) {
    return null;
  }

  return $AACSymbolStatusCopyWith<$Res>(_self.symbolStatus!, (value) {
    return _then(_self.copyWith(symbolStatus: value));
  });
}/// Create a copy of AACSymbol
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediumCopyWith<$Res>? get medium {
    if (_self.medium == null) {
    return null;
  }

  return $MediumCopyWith<$Res>(_self.medium!, (value) {
    return _then(_self.copyWith(medium: value));
  });
}/// Create a copy of AACSymbol
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AACSymbolSystemCopyWith<$Res>? get symbolSystem {
    if (_self.symbolSystem == null) {
    return null;
  }

  return $AACSymbolSystemCopyWith<$Res>(_self.symbolSystem!, (value) {
    return _then(_self.copyWith(symbolSystem: value));
  });
}
}


/// @nodoc
mixin _$AACSymbolStatus {

@JsonKey(includeIfNull: false) int? get id;@JsonKey(includeIfNull: false) String? get status;
/// Create a copy of AACSymbolStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AACSymbolStatusCopyWith<AACSymbolStatus> get copyWith => _$AACSymbolStatusCopyWithImpl<AACSymbolStatus>(this as AACSymbolStatus, _$identity);

  /// Serializes this AACSymbolStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AACSymbolStatus&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status);

@override
String toString() {
  return 'AACSymbolStatus(id: $id, status: $status)';
}


}

/// @nodoc
abstract mixin class $AACSymbolStatusCopyWith<$Res>  {
  factory $AACSymbolStatusCopyWith(AACSymbolStatus value, $Res Function(AACSymbolStatus) _then) = _$AACSymbolStatusCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) int? id,@JsonKey(includeIfNull: false) String? status
});




}
/// @nodoc
class _$AACSymbolStatusCopyWithImpl<$Res>
    implements $AACSymbolStatusCopyWith<$Res> {
  _$AACSymbolStatusCopyWithImpl(this._self, this._then);

  final AACSymbolStatus _self;
  final $Res Function(AACSymbolStatus) _then;

/// Create a copy of AACSymbolStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AACSymbolStatus].
extension AACSymbolStatusPatterns on AACSymbolStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AACSymbolStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AACSymbolStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AACSymbolStatus value)  $default,){
final _that = this;
switch (_that) {
case _AACSymbolStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AACSymbolStatus value)?  $default,){
final _that = this;
switch (_that) {
case _AACSymbolStatus() when $default != null:
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
case _AACSymbolStatus() when $default != null:
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
case _AACSymbolStatus():
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
case _AACSymbolStatus() when $default != null:
return $default(_that.id,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AACSymbolStatus implements AACSymbolStatus {
  const _AACSymbolStatus({@JsonKey(includeIfNull: false) this.id, @JsonKey(includeIfNull: false) this.status});
  factory _AACSymbolStatus.fromJson(Map<String, dynamic> json) => _$AACSymbolStatusFromJson(json);

@override@JsonKey(includeIfNull: false) final  int? id;
@override@JsonKey(includeIfNull: false) final  String? status;

/// Create a copy of AACSymbolStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AACSymbolStatusCopyWith<_AACSymbolStatus> get copyWith => __$AACSymbolStatusCopyWithImpl<_AACSymbolStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AACSymbolStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AACSymbolStatus&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status);

@override
String toString() {
  return 'AACSymbolStatus(id: $id, status: $status)';
}


}

/// @nodoc
abstract mixin class _$AACSymbolStatusCopyWith<$Res> implements $AACSymbolStatusCopyWith<$Res> {
  factory _$AACSymbolStatusCopyWith(_AACSymbolStatus value, $Res Function(_AACSymbolStatus) _then) = __$AACSymbolStatusCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) int? id,@JsonKey(includeIfNull: false) String? status
});




}
/// @nodoc
class __$AACSymbolStatusCopyWithImpl<$Res>
    implements _$AACSymbolStatusCopyWith<$Res> {
  __$AACSymbolStatusCopyWithImpl(this._self, this._then);

  final _AACSymbolStatus _self;
  final $Res Function(_AACSymbolStatus) _then;

/// Create a copy of AACSymbolStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? status = freezed,}) {
  return _then(_AACSymbolStatus(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AACSymbolSystem {

@JsonKey(includeIfNull: false) int? get id;@JsonKey(includeIfNull: false) String? get systemName;@JsonKey(includeIfNull: false) String? get issuer;@JsonKey(includeIfNull: false) String? get description;
/// Create a copy of AACSymbolSystem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AACSymbolSystemCopyWith<AACSymbolSystem> get copyWith => _$AACSymbolSystemCopyWithImpl<AACSymbolSystem>(this as AACSymbolSystem, _$identity);

  /// Serializes this AACSymbolSystem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AACSymbolSystem&&(identical(other.id, id) || other.id == id)&&(identical(other.systemName, systemName) || other.systemName == systemName)&&(identical(other.issuer, issuer) || other.issuer == issuer)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,systemName,issuer,description);

@override
String toString() {
  return 'AACSymbolSystem(id: $id, systemName: $systemName, issuer: $issuer, description: $description)';
}


}

/// @nodoc
abstract mixin class $AACSymbolSystemCopyWith<$Res>  {
  factory $AACSymbolSystemCopyWith(AACSymbolSystem value, $Res Function(AACSymbolSystem) _then) = _$AACSymbolSystemCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) int? id,@JsonKey(includeIfNull: false) String? systemName,@JsonKey(includeIfNull: false) String? issuer,@JsonKey(includeIfNull: false) String? description
});




}
/// @nodoc
class _$AACSymbolSystemCopyWithImpl<$Res>
    implements $AACSymbolSystemCopyWith<$Res> {
  _$AACSymbolSystemCopyWithImpl(this._self, this._then);

  final AACSymbolSystem _self;
  final $Res Function(AACSymbolSystem) _then;

/// Create a copy of AACSymbolSystem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? systemName = freezed,Object? issuer = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,systemName: freezed == systemName ? _self.systemName : systemName // ignore: cast_nullable_to_non_nullable
as String?,issuer: freezed == issuer ? _self.issuer : issuer // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AACSymbolSystem].
extension AACSymbolSystemPatterns on AACSymbolSystem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AACSymbolSystem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AACSymbolSystem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AACSymbolSystem value)  $default,){
final _that = this;
switch (_that) {
case _AACSymbolSystem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AACSymbolSystem value)?  $default,){
final _that = this;
switch (_that) {
case _AACSymbolSystem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? systemName, @JsonKey(includeIfNull: false)  String? issuer, @JsonKey(includeIfNull: false)  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AACSymbolSystem() when $default != null:
return $default(_that.id,_that.systemName,_that.issuer,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? systemName, @JsonKey(includeIfNull: false)  String? issuer, @JsonKey(includeIfNull: false)  String? description)  $default,) {final _that = this;
switch (_that) {
case _AACSymbolSystem():
return $default(_that.id,_that.systemName,_that.issuer,_that.description);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? systemName, @JsonKey(includeIfNull: false)  String? issuer, @JsonKey(includeIfNull: false)  String? description)?  $default,) {final _that = this;
switch (_that) {
case _AACSymbolSystem() when $default != null:
return $default(_that.id,_that.systemName,_that.issuer,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AACSymbolSystem implements AACSymbolSystem {
  const _AACSymbolSystem({@JsonKey(includeIfNull: false) this.id, @JsonKey(includeIfNull: false) this.systemName, @JsonKey(includeIfNull: false) this.issuer, @JsonKey(includeIfNull: false) this.description});
  factory _AACSymbolSystem.fromJson(Map<String, dynamic> json) => _$AACSymbolSystemFromJson(json);

@override@JsonKey(includeIfNull: false) final  int? id;
@override@JsonKey(includeIfNull: false) final  String? systemName;
@override@JsonKey(includeIfNull: false) final  String? issuer;
@override@JsonKey(includeIfNull: false) final  String? description;

/// Create a copy of AACSymbolSystem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AACSymbolSystemCopyWith<_AACSymbolSystem> get copyWith => __$AACSymbolSystemCopyWithImpl<_AACSymbolSystem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AACSymbolSystemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AACSymbolSystem&&(identical(other.id, id) || other.id == id)&&(identical(other.systemName, systemName) || other.systemName == systemName)&&(identical(other.issuer, issuer) || other.issuer == issuer)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,systemName,issuer,description);

@override
String toString() {
  return 'AACSymbolSystem(id: $id, systemName: $systemName, issuer: $issuer, description: $description)';
}


}

/// @nodoc
abstract mixin class _$AACSymbolSystemCopyWith<$Res> implements $AACSymbolSystemCopyWith<$Res> {
  factory _$AACSymbolSystemCopyWith(_AACSymbolSystem value, $Res Function(_AACSymbolSystem) _then) = __$AACSymbolSystemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) int? id,@JsonKey(includeIfNull: false) String? systemName,@JsonKey(includeIfNull: false) String? issuer,@JsonKey(includeIfNull: false) String? description
});




}
/// @nodoc
class __$AACSymbolSystemCopyWithImpl<$Res>
    implements _$AACSymbolSystemCopyWith<$Res> {
  __$AACSymbolSystemCopyWithImpl(this._self, this._then);

  final _AACSymbolSystem _self;
  final $Res Function(_AACSymbolSystem) _then;

/// Create a copy of AACSymbolSystem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? systemName = freezed,Object? issuer = freezed,Object? description = freezed,}) {
  return _then(_AACSymbolSystem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,systemName: freezed == systemName ? _self.systemName : systemName // ignore: cast_nullable_to_non_nullable
as String?,issuer: freezed == issuer ? _self.issuer : issuer // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
