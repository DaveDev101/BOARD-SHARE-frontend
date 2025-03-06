// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aac_symbol.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AACSymbol _$AACSymbolFromJson(Map<String, dynamic> json) {
  return _AACSymbol.fromJson(json);
}

/// @nodoc
mixin _$AACSymbol {
  @JsonKey(includeIfNull: false)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get symbolTitle => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get symbolExcerpt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  AACSymbolStatus? get symbolStatus => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  bool? get isCommentOpen => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  Medium? get medium => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get commentCount => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get likeCount => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  AACSymbolSystem? get symbolSystem => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AACSymbol to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AACSymbol
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AACSymbolCopyWith<AACSymbol> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AACSymbolCopyWith<$Res> {
  factory $AACSymbolCopyWith(AACSymbol value, $Res Function(AACSymbol) then) =
      _$AACSymbolCopyWithImpl<$Res, AACSymbol>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(includeIfNull: false) String? symbolTitle,
      @JsonKey(includeIfNull: false) String? symbolExcerpt,
      @JsonKey(includeIfNull: false) AACSymbolStatus? symbolStatus,
      @JsonKey(includeIfNull: false) bool? isCommentOpen,
      @JsonKey(includeIfNull: false) Medium? medium,
      @JsonKey(includeIfNull: false) int? commentCount,
      @JsonKey(includeIfNull: false) int? likeCount,
      @JsonKey(includeIfNull: false) AACSymbolSystem? symbolSystem,
      @JsonKey(includeIfNull: false) String? description,
      @JsonKey(includeIfNull: false) DateTime? createdAt,
      @JsonKey(includeIfNull: false) DateTime? updatedAt});

  $AACSymbolStatusCopyWith<$Res>? get symbolStatus;
  $MediumCopyWith<$Res>? get medium;
  $AACSymbolSystemCopyWith<$Res>? get symbolSystem;
}

/// @nodoc
class _$AACSymbolCopyWithImpl<$Res, $Val extends AACSymbol>
    implements $AACSymbolCopyWith<$Res> {
  _$AACSymbolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AACSymbol
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? symbolTitle = freezed,
    Object? symbolExcerpt = freezed,
    Object? symbolStatus = freezed,
    Object? isCommentOpen = freezed,
    Object? medium = freezed,
    Object? commentCount = freezed,
    Object? likeCount = freezed,
    Object? symbolSystem = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      symbolTitle: freezed == symbolTitle
          ? _value.symbolTitle
          : symbolTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      symbolExcerpt: freezed == symbolExcerpt
          ? _value.symbolExcerpt
          : symbolExcerpt // ignore: cast_nullable_to_non_nullable
              as String?,
      symbolStatus: freezed == symbolStatus
          ? _value.symbolStatus
          : symbolStatus // ignore: cast_nullable_to_non_nullable
              as AACSymbolStatus?,
      isCommentOpen: freezed == isCommentOpen
          ? _value.isCommentOpen
          : isCommentOpen // ignore: cast_nullable_to_non_nullable
              as bool?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as Medium?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      symbolSystem: freezed == symbolSystem
          ? _value.symbolSystem
          : symbolSystem // ignore: cast_nullable_to_non_nullable
              as AACSymbolSystem?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of AACSymbol
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AACSymbolStatusCopyWith<$Res>? get symbolStatus {
    if (_value.symbolStatus == null) {
      return null;
    }

    return $AACSymbolStatusCopyWith<$Res>(_value.symbolStatus!, (value) {
      return _then(_value.copyWith(symbolStatus: value) as $Val);
    });
  }

  /// Create a copy of AACSymbol
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediumCopyWith<$Res>? get medium {
    if (_value.medium == null) {
      return null;
    }

    return $MediumCopyWith<$Res>(_value.medium!, (value) {
      return _then(_value.copyWith(medium: value) as $Val);
    });
  }

  /// Create a copy of AACSymbol
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AACSymbolSystemCopyWith<$Res>? get symbolSystem {
    if (_value.symbolSystem == null) {
      return null;
    }

    return $AACSymbolSystemCopyWith<$Res>(_value.symbolSystem!, (value) {
      return _then(_value.copyWith(symbolSystem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AACSymbolImplCopyWith<$Res>
    implements $AACSymbolCopyWith<$Res> {
  factory _$$AACSymbolImplCopyWith(
          _$AACSymbolImpl value, $Res Function(_$AACSymbolImpl) then) =
      __$$AACSymbolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(includeIfNull: false) String? symbolTitle,
      @JsonKey(includeIfNull: false) String? symbolExcerpt,
      @JsonKey(includeIfNull: false) AACSymbolStatus? symbolStatus,
      @JsonKey(includeIfNull: false) bool? isCommentOpen,
      @JsonKey(includeIfNull: false) Medium? medium,
      @JsonKey(includeIfNull: false) int? commentCount,
      @JsonKey(includeIfNull: false) int? likeCount,
      @JsonKey(includeIfNull: false) AACSymbolSystem? symbolSystem,
      @JsonKey(includeIfNull: false) String? description,
      @JsonKey(includeIfNull: false) DateTime? createdAt,
      @JsonKey(includeIfNull: false) DateTime? updatedAt});

  @override
  $AACSymbolStatusCopyWith<$Res>? get symbolStatus;
  @override
  $MediumCopyWith<$Res>? get medium;
  @override
  $AACSymbolSystemCopyWith<$Res>? get symbolSystem;
}

/// @nodoc
class __$$AACSymbolImplCopyWithImpl<$Res>
    extends _$AACSymbolCopyWithImpl<$Res, _$AACSymbolImpl>
    implements _$$AACSymbolImplCopyWith<$Res> {
  __$$AACSymbolImplCopyWithImpl(
      _$AACSymbolImpl _value, $Res Function(_$AACSymbolImpl) _then)
      : super(_value, _then);

  /// Create a copy of AACSymbol
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? symbolTitle = freezed,
    Object? symbolExcerpt = freezed,
    Object? symbolStatus = freezed,
    Object? isCommentOpen = freezed,
    Object? medium = freezed,
    Object? commentCount = freezed,
    Object? likeCount = freezed,
    Object? symbolSystem = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AACSymbolImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      symbolTitle: freezed == symbolTitle
          ? _value.symbolTitle
          : symbolTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      symbolExcerpt: freezed == symbolExcerpt
          ? _value.symbolExcerpt
          : symbolExcerpt // ignore: cast_nullable_to_non_nullable
              as String?,
      symbolStatus: freezed == symbolStatus
          ? _value.symbolStatus
          : symbolStatus // ignore: cast_nullable_to_non_nullable
              as AACSymbolStatus?,
      isCommentOpen: freezed == isCommentOpen
          ? _value.isCommentOpen
          : isCommentOpen // ignore: cast_nullable_to_non_nullable
              as bool?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as Medium?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      symbolSystem: freezed == symbolSystem
          ? _value.symbolSystem
          : symbolSystem // ignore: cast_nullable_to_non_nullable
              as AACSymbolSystem?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AACSymbolImpl implements _AACSymbol {
  const _$AACSymbolImpl(
      {@JsonKey(includeIfNull: false) this.id,
      @JsonKey(includeIfNull: false) this.symbolTitle,
      @JsonKey(includeIfNull: false) this.symbolExcerpt,
      @JsonKey(includeIfNull: false) this.symbolStatus,
      @JsonKey(includeIfNull: false) this.isCommentOpen,
      @JsonKey(includeIfNull: false) this.medium,
      @JsonKey(includeIfNull: false) this.commentCount,
      @JsonKey(includeIfNull: false) this.likeCount,
      @JsonKey(includeIfNull: false) this.symbolSystem,
      @JsonKey(includeIfNull: false) this.description,
      @JsonKey(includeIfNull: false) this.createdAt,
      @JsonKey(includeIfNull: false) this.updatedAt});

  factory _$AACSymbolImpl.fromJson(Map<String, dynamic> json) =>
      _$$AACSymbolImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final int? id;
  @override
  @JsonKey(includeIfNull: false)
  final String? symbolTitle;
  @override
  @JsonKey(includeIfNull: false)
  final String? symbolExcerpt;
  @override
  @JsonKey(includeIfNull: false)
  final AACSymbolStatus? symbolStatus;
  @override
  @JsonKey(includeIfNull: false)
  final bool? isCommentOpen;
  @override
  @JsonKey(includeIfNull: false)
  final Medium? medium;
  @override
  @JsonKey(includeIfNull: false)
  final int? commentCount;
  @override
  @JsonKey(includeIfNull: false)
  final int? likeCount;
  @override
  @JsonKey(includeIfNull: false)
  final AACSymbolSystem? symbolSystem;
  @override
  @JsonKey(includeIfNull: false)
  final String? description;
  @override
  @JsonKey(includeIfNull: false)
  final DateTime? createdAt;
  @override
  @JsonKey(includeIfNull: false)
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'AACSymbol(id: $id, symbolTitle: $symbolTitle, symbolExcerpt: $symbolExcerpt, symbolStatus: $symbolStatus, isCommentOpen: $isCommentOpen, medium: $medium, commentCount: $commentCount, likeCount: $likeCount, symbolSystem: $symbolSystem, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AACSymbolImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symbolTitle, symbolTitle) ||
                other.symbolTitle == symbolTitle) &&
            (identical(other.symbolExcerpt, symbolExcerpt) ||
                other.symbolExcerpt == symbolExcerpt) &&
            (identical(other.symbolStatus, symbolStatus) ||
                other.symbolStatus == symbolStatus) &&
            (identical(other.isCommentOpen, isCommentOpen) ||
                other.isCommentOpen == isCommentOpen) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.symbolSystem, symbolSystem) ||
                other.symbolSystem == symbolSystem) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      symbolTitle,
      symbolExcerpt,
      symbolStatus,
      isCommentOpen,
      medium,
      commentCount,
      likeCount,
      symbolSystem,
      description,
      createdAt,
      updatedAt);

  /// Create a copy of AACSymbol
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AACSymbolImplCopyWith<_$AACSymbolImpl> get copyWith =>
      __$$AACSymbolImplCopyWithImpl<_$AACSymbolImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AACSymbolImplToJson(
      this,
    );
  }
}

abstract class _AACSymbol implements AACSymbol {
  const factory _AACSymbol(
          {@JsonKey(includeIfNull: false) final int? id,
          @JsonKey(includeIfNull: false) final String? symbolTitle,
          @JsonKey(includeIfNull: false) final String? symbolExcerpt,
          @JsonKey(includeIfNull: false) final AACSymbolStatus? symbolStatus,
          @JsonKey(includeIfNull: false) final bool? isCommentOpen,
          @JsonKey(includeIfNull: false) final Medium? medium,
          @JsonKey(includeIfNull: false) final int? commentCount,
          @JsonKey(includeIfNull: false) final int? likeCount,
          @JsonKey(includeIfNull: false) final AACSymbolSystem? symbolSystem,
          @JsonKey(includeIfNull: false) final String? description,
          @JsonKey(includeIfNull: false) final DateTime? createdAt,
          @JsonKey(includeIfNull: false) final DateTime? updatedAt}) =
      _$AACSymbolImpl;

  factory _AACSymbol.fromJson(Map<String, dynamic> json) =
      _$AACSymbolImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  int? get id;
  @override
  @JsonKey(includeIfNull: false)
  String? get symbolTitle;
  @override
  @JsonKey(includeIfNull: false)
  String? get symbolExcerpt;
  @override
  @JsonKey(includeIfNull: false)
  AACSymbolStatus? get symbolStatus;
  @override
  @JsonKey(includeIfNull: false)
  bool? get isCommentOpen;
  @override
  @JsonKey(includeIfNull: false)
  Medium? get medium;
  @override
  @JsonKey(includeIfNull: false)
  int? get commentCount;
  @override
  @JsonKey(includeIfNull: false)
  int? get likeCount;
  @override
  @JsonKey(includeIfNull: false)
  AACSymbolSystem? get symbolSystem;
  @override
  @JsonKey(includeIfNull: false)
  String? get description;
  @override
  @JsonKey(includeIfNull: false)
  DateTime? get createdAt;
  @override
  @JsonKey(includeIfNull: false)
  DateTime? get updatedAt;

  /// Create a copy of AACSymbol
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AACSymbolImplCopyWith<_$AACSymbolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AACSymbolStatus _$AACSymbolStatusFromJson(Map<String, dynamic> json) {
  return _AACSymbolStatus.fromJson(json);
}

/// @nodoc
mixin _$AACSymbolStatus {
  @JsonKey(includeIfNull: false)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this AACSymbolStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AACSymbolStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AACSymbolStatusCopyWith<AACSymbolStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AACSymbolStatusCopyWith<$Res> {
  factory $AACSymbolStatusCopyWith(
          AACSymbolStatus value, $Res Function(AACSymbolStatus) then) =
      _$AACSymbolStatusCopyWithImpl<$Res, AACSymbolStatus>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(includeIfNull: false) String? status});
}

/// @nodoc
class _$AACSymbolStatusCopyWithImpl<$Res, $Val extends AACSymbolStatus>
    implements $AACSymbolStatusCopyWith<$Res> {
  _$AACSymbolStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AACSymbolStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AACSymbolStatusImplCopyWith<$Res>
    implements $AACSymbolStatusCopyWith<$Res> {
  factory _$$AACSymbolStatusImplCopyWith(_$AACSymbolStatusImpl value,
          $Res Function(_$AACSymbolStatusImpl) then) =
      __$$AACSymbolStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(includeIfNull: false) String? status});
}

/// @nodoc
class __$$AACSymbolStatusImplCopyWithImpl<$Res>
    extends _$AACSymbolStatusCopyWithImpl<$Res, _$AACSymbolStatusImpl>
    implements _$$AACSymbolStatusImplCopyWith<$Res> {
  __$$AACSymbolStatusImplCopyWithImpl(
      _$AACSymbolStatusImpl _value, $Res Function(_$AACSymbolStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of AACSymbolStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
  }) {
    return _then(_$AACSymbolStatusImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AACSymbolStatusImpl implements _AACSymbolStatus {
  const _$AACSymbolStatusImpl(
      {@JsonKey(includeIfNull: false) this.id,
      @JsonKey(includeIfNull: false) this.status});

  factory _$AACSymbolStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$AACSymbolStatusImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final int? id;
  @override
  @JsonKey(includeIfNull: false)
  final String? status;

  @override
  String toString() {
    return 'AACSymbolStatus(id: $id, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AACSymbolStatusImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status);

  /// Create a copy of AACSymbolStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AACSymbolStatusImplCopyWith<_$AACSymbolStatusImpl> get copyWith =>
      __$$AACSymbolStatusImplCopyWithImpl<_$AACSymbolStatusImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AACSymbolStatusImplToJson(
      this,
    );
  }
}

abstract class _AACSymbolStatus implements AACSymbolStatus {
  const factory _AACSymbolStatus(
          {@JsonKey(includeIfNull: false) final int? id,
          @JsonKey(includeIfNull: false) final String? status}) =
      _$AACSymbolStatusImpl;

  factory _AACSymbolStatus.fromJson(Map<String, dynamic> json) =
      _$AACSymbolStatusImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  int? get id;
  @override
  @JsonKey(includeIfNull: false)
  String? get status;

  /// Create a copy of AACSymbolStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AACSymbolStatusImplCopyWith<_$AACSymbolStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AACSymbolSystem _$AACSymbolSystemFromJson(Map<String, dynamic> json) {
  return _AACSymbolSystem.fromJson(json);
}

/// @nodoc
mixin _$AACSymbolSystem {
  @JsonKey(includeIfNull: false)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get systemName => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get Issuer => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get Description => throw _privateConstructorUsedError;

  /// Serializes this AACSymbolSystem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AACSymbolSystem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AACSymbolSystemCopyWith<AACSymbolSystem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AACSymbolSystemCopyWith<$Res> {
  factory $AACSymbolSystemCopyWith(
          AACSymbolSystem value, $Res Function(AACSymbolSystem) then) =
      _$AACSymbolSystemCopyWithImpl<$Res, AACSymbolSystem>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(includeIfNull: false) String? systemName,
      @JsonKey(includeIfNull: false) String? Issuer,
      @JsonKey(includeIfNull: false) String? Description});
}

/// @nodoc
class _$AACSymbolSystemCopyWithImpl<$Res, $Val extends AACSymbolSystem>
    implements $AACSymbolSystemCopyWith<$Res> {
  _$AACSymbolSystemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AACSymbolSystem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? systemName = freezed,
    Object? Issuer = freezed,
    Object? Description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      systemName: freezed == systemName
          ? _value.systemName
          : systemName // ignore: cast_nullable_to_non_nullable
              as String?,
      Issuer: freezed == Issuer
          ? _value.Issuer
          : Issuer // ignore: cast_nullable_to_non_nullable
              as String?,
      Description: freezed == Description
          ? _value.Description
          : Description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AACSymbolSystemImplCopyWith<$Res>
    implements $AACSymbolSystemCopyWith<$Res> {
  factory _$$AACSymbolSystemImplCopyWith(_$AACSymbolSystemImpl value,
          $Res Function(_$AACSymbolSystemImpl) then) =
      __$$AACSymbolSystemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(includeIfNull: false) String? systemName,
      @JsonKey(includeIfNull: false) String? Issuer,
      @JsonKey(includeIfNull: false) String? Description});
}

/// @nodoc
class __$$AACSymbolSystemImplCopyWithImpl<$Res>
    extends _$AACSymbolSystemCopyWithImpl<$Res, _$AACSymbolSystemImpl>
    implements _$$AACSymbolSystemImplCopyWith<$Res> {
  __$$AACSymbolSystemImplCopyWithImpl(
      _$AACSymbolSystemImpl _value, $Res Function(_$AACSymbolSystemImpl) _then)
      : super(_value, _then);

  /// Create a copy of AACSymbolSystem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? systemName = freezed,
    Object? Issuer = freezed,
    Object? Description = freezed,
  }) {
    return _then(_$AACSymbolSystemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      systemName: freezed == systemName
          ? _value.systemName
          : systemName // ignore: cast_nullable_to_non_nullable
              as String?,
      Issuer: freezed == Issuer
          ? _value.Issuer
          : Issuer // ignore: cast_nullable_to_non_nullable
              as String?,
      Description: freezed == Description
          ? _value.Description
          : Description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AACSymbolSystemImpl implements _AACSymbolSystem {
  const _$AACSymbolSystemImpl(
      {@JsonKey(includeIfNull: false) this.id,
      @JsonKey(includeIfNull: false) this.systemName,
      @JsonKey(includeIfNull: false) this.Issuer,
      @JsonKey(includeIfNull: false) this.Description});

  factory _$AACSymbolSystemImpl.fromJson(Map<String, dynamic> json) =>
      _$$AACSymbolSystemImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final int? id;
  @override
  @JsonKey(includeIfNull: false)
  final String? systemName;
  @override
  @JsonKey(includeIfNull: false)
  final String? Issuer;
  @override
  @JsonKey(includeIfNull: false)
  final String? Description;

  @override
  String toString() {
    return 'AACSymbolSystem(id: $id, systemName: $systemName, Issuer: $Issuer, Description: $Description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AACSymbolSystemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.systemName, systemName) ||
                other.systemName == systemName) &&
            (identical(other.Issuer, Issuer) || other.Issuer == Issuer) &&
            (identical(other.Description, Description) ||
                other.Description == Description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, systemName, Issuer, Description);

  /// Create a copy of AACSymbolSystem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AACSymbolSystemImplCopyWith<_$AACSymbolSystemImpl> get copyWith =>
      __$$AACSymbolSystemImplCopyWithImpl<_$AACSymbolSystemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AACSymbolSystemImplToJson(
      this,
    );
  }
}

abstract class _AACSymbolSystem implements AACSymbolSystem {
  const factory _AACSymbolSystem(
          {@JsonKey(includeIfNull: false) final int? id,
          @JsonKey(includeIfNull: false) final String? systemName,
          @JsonKey(includeIfNull: false) final String? Issuer,
          @JsonKey(includeIfNull: false) final String? Description}) =
      _$AACSymbolSystemImpl;

  factory _AACSymbolSystem.fromJson(Map<String, dynamic> json) =
      _$AACSymbolSystemImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  int? get id;
  @override
  @JsonKey(includeIfNull: false)
  String? get systemName;
  @override
  @JsonKey(includeIfNull: false)
  String? get Issuer;
  @override
  @JsonKey(includeIfNull: false)
  String? get Description;

  /// Create a copy of AACSymbolSystem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AACSymbolSystemImplCopyWith<_$AACSymbolSystemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
