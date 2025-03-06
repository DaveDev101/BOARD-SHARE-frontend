// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medium.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Medium _$MediumFromJson(Map<String, dynamic> json) {
  return _Medium.fromJson(json);
}

/// @nodoc
mixin _$Medium {
  @JsonKey(includeIfNull: false)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get mediumTitle => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get mediumPath => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get mediumUrl => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get mediumMimeType => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  MediumStatus? get mediumStatus => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get userOrgId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Medium to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Medium
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediumCopyWith<Medium> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediumCopyWith<$Res> {
  factory $MediumCopyWith(Medium value, $Res Function(Medium) then) =
      _$MediumCopyWithImpl<$Res, Medium>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(includeIfNull: false) String? mediumTitle,
      @JsonKey(includeIfNull: false) String? mediumPath,
      @JsonKey(includeIfNull: false) String? mediumUrl,
      @JsonKey(includeIfNull: false) String? mediumMimeType,
      @JsonKey(includeIfNull: false) MediumStatus? mediumStatus,
      @JsonKey(includeIfNull: false) int? userId,
      @JsonKey(includeIfNull: false) int? userOrgId,
      @JsonKey(includeIfNull: false) String? description,
      @JsonKey(includeIfNull: false) DateTime? createdAt,
      @JsonKey(includeIfNull: false) DateTime? updatedAt});

  $MediumStatusCopyWith<$Res>? get mediumStatus;
}

/// @nodoc
class _$MediumCopyWithImpl<$Res, $Val extends Medium>
    implements $MediumCopyWith<$Res> {
  _$MediumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Medium
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mediumTitle = freezed,
    Object? mediumPath = freezed,
    Object? mediumUrl = freezed,
    Object? mediumMimeType = freezed,
    Object? mediumStatus = freezed,
    Object? userId = freezed,
    Object? userOrgId = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mediumTitle: freezed == mediumTitle
          ? _value.mediumTitle
          : mediumTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumPath: freezed == mediumPath
          ? _value.mediumPath
          : mediumPath // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumUrl: freezed == mediumUrl
          ? _value.mediumUrl
          : mediumUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumMimeType: freezed == mediumMimeType
          ? _value.mediumMimeType
          : mediumMimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumStatus: freezed == mediumStatus
          ? _value.mediumStatus
          : mediumStatus // ignore: cast_nullable_to_non_nullable
              as MediumStatus?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userOrgId: freezed == userOrgId
          ? _value.userOrgId
          : userOrgId // ignore: cast_nullable_to_non_nullable
              as int?,
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

  /// Create a copy of Medium
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediumStatusCopyWith<$Res>? get mediumStatus {
    if (_value.mediumStatus == null) {
      return null;
    }

    return $MediumStatusCopyWith<$Res>(_value.mediumStatus!, (value) {
      return _then(_value.copyWith(mediumStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MediumImplCopyWith<$Res> implements $MediumCopyWith<$Res> {
  factory _$$MediumImplCopyWith(
          _$MediumImpl value, $Res Function(_$MediumImpl) then) =
      __$$MediumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(includeIfNull: false) String? mediumTitle,
      @JsonKey(includeIfNull: false) String? mediumPath,
      @JsonKey(includeIfNull: false) String? mediumUrl,
      @JsonKey(includeIfNull: false) String? mediumMimeType,
      @JsonKey(includeIfNull: false) MediumStatus? mediumStatus,
      @JsonKey(includeIfNull: false) int? userId,
      @JsonKey(includeIfNull: false) int? userOrgId,
      @JsonKey(includeIfNull: false) String? description,
      @JsonKey(includeIfNull: false) DateTime? createdAt,
      @JsonKey(includeIfNull: false) DateTime? updatedAt});

  @override
  $MediumStatusCopyWith<$Res>? get mediumStatus;
}

/// @nodoc
class __$$MediumImplCopyWithImpl<$Res>
    extends _$MediumCopyWithImpl<$Res, _$MediumImpl>
    implements _$$MediumImplCopyWith<$Res> {
  __$$MediumImplCopyWithImpl(
      _$MediumImpl _value, $Res Function(_$MediumImpl) _then)
      : super(_value, _then);

  /// Create a copy of Medium
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mediumTitle = freezed,
    Object? mediumPath = freezed,
    Object? mediumUrl = freezed,
    Object? mediumMimeType = freezed,
    Object? mediumStatus = freezed,
    Object? userId = freezed,
    Object? userOrgId = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$MediumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mediumTitle: freezed == mediumTitle
          ? _value.mediumTitle
          : mediumTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumPath: freezed == mediumPath
          ? _value.mediumPath
          : mediumPath // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumUrl: freezed == mediumUrl
          ? _value.mediumUrl
          : mediumUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumMimeType: freezed == mediumMimeType
          ? _value.mediumMimeType
          : mediumMimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumStatus: freezed == mediumStatus
          ? _value.mediumStatus
          : mediumStatus // ignore: cast_nullable_to_non_nullable
              as MediumStatus?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userOrgId: freezed == userOrgId
          ? _value.userOrgId
          : userOrgId // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$MediumImpl implements _Medium {
  const _$MediumImpl(
      {@JsonKey(includeIfNull: false) this.id,
      @JsonKey(includeIfNull: false) this.mediumTitle,
      @JsonKey(includeIfNull: false) this.mediumPath,
      @JsonKey(includeIfNull: false) this.mediumUrl,
      @JsonKey(includeIfNull: false) this.mediumMimeType,
      @JsonKey(includeIfNull: false) this.mediumStatus,
      @JsonKey(includeIfNull: false) this.userId,
      @JsonKey(includeIfNull: false) this.userOrgId,
      @JsonKey(includeIfNull: false) this.description,
      @JsonKey(includeIfNull: false) this.createdAt,
      @JsonKey(includeIfNull: false) this.updatedAt});

  factory _$MediumImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediumImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final int? id;
  @override
  @JsonKey(includeIfNull: false)
  final String? mediumTitle;
  @override
  @JsonKey(includeIfNull: false)
  final String? mediumPath;
  @override
  @JsonKey(includeIfNull: false)
  final String? mediumUrl;
  @override
  @JsonKey(includeIfNull: false)
  final String? mediumMimeType;
  @override
  @JsonKey(includeIfNull: false)
  final MediumStatus? mediumStatus;
  @override
  @JsonKey(includeIfNull: false)
  final int? userId;
  @override
  @JsonKey(includeIfNull: false)
  final int? userOrgId;
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
    return 'Medium(id: $id, mediumTitle: $mediumTitle, mediumPath: $mediumPath, mediumUrl: $mediumUrl, mediumMimeType: $mediumMimeType, mediumStatus: $mediumStatus, userId: $userId, userOrgId: $userOrgId, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mediumTitle, mediumTitle) ||
                other.mediumTitle == mediumTitle) &&
            (identical(other.mediumPath, mediumPath) ||
                other.mediumPath == mediumPath) &&
            (identical(other.mediumUrl, mediumUrl) ||
                other.mediumUrl == mediumUrl) &&
            (identical(other.mediumMimeType, mediumMimeType) ||
                other.mediumMimeType == mediumMimeType) &&
            (identical(other.mediumStatus, mediumStatus) ||
                other.mediumStatus == mediumStatus) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userOrgId, userOrgId) ||
                other.userOrgId == userOrgId) &&
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
      mediumTitle,
      mediumPath,
      mediumUrl,
      mediumMimeType,
      mediumStatus,
      userId,
      userOrgId,
      description,
      createdAt,
      updatedAt);

  /// Create a copy of Medium
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediumImplCopyWith<_$MediumImpl> get copyWith =>
      __$$MediumImplCopyWithImpl<_$MediumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediumImplToJson(
      this,
    );
  }
}

abstract class _Medium implements Medium {
  const factory _Medium(
      {@JsonKey(includeIfNull: false) final int? id,
      @JsonKey(includeIfNull: false) final String? mediumTitle,
      @JsonKey(includeIfNull: false) final String? mediumPath,
      @JsonKey(includeIfNull: false) final String? mediumUrl,
      @JsonKey(includeIfNull: false) final String? mediumMimeType,
      @JsonKey(includeIfNull: false) final MediumStatus? mediumStatus,
      @JsonKey(includeIfNull: false) final int? userId,
      @JsonKey(includeIfNull: false) final int? userOrgId,
      @JsonKey(includeIfNull: false) final String? description,
      @JsonKey(includeIfNull: false) final DateTime? createdAt,
      @JsonKey(includeIfNull: false) final DateTime? updatedAt}) = _$MediumImpl;

  factory _Medium.fromJson(Map<String, dynamic> json) = _$MediumImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  int? get id;
  @override
  @JsonKey(includeIfNull: false)
  String? get mediumTitle;
  @override
  @JsonKey(includeIfNull: false)
  String? get mediumPath;
  @override
  @JsonKey(includeIfNull: false)
  String? get mediumUrl;
  @override
  @JsonKey(includeIfNull: false)
  String? get mediumMimeType;
  @override
  @JsonKey(includeIfNull: false)
  MediumStatus? get mediumStatus;
  @override
  @JsonKey(includeIfNull: false)
  int? get userId;
  @override
  @JsonKey(includeIfNull: false)
  int? get userOrgId;
  @override
  @JsonKey(includeIfNull: false)
  String? get description;
  @override
  @JsonKey(includeIfNull: false)
  DateTime? get createdAt;
  @override
  @JsonKey(includeIfNull: false)
  DateTime? get updatedAt;

  /// Create a copy of Medium
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediumImplCopyWith<_$MediumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MediumStatus _$MediumStatusFromJson(Map<String, dynamic> json) {
  return _MediumStatus.fromJson(json);
}

/// @nodoc
mixin _$MediumStatus {
  @JsonKey(includeIfNull: false)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this MediumStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediumStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediumStatusCopyWith<MediumStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediumStatusCopyWith<$Res> {
  factory $MediumStatusCopyWith(
          MediumStatus value, $Res Function(MediumStatus) then) =
      _$MediumStatusCopyWithImpl<$Res, MediumStatus>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(includeIfNull: false) String? status});
}

/// @nodoc
class _$MediumStatusCopyWithImpl<$Res, $Val extends MediumStatus>
    implements $MediumStatusCopyWith<$Res> {
  _$MediumStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediumStatus
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
abstract class _$$MediumStatusImplCopyWith<$Res>
    implements $MediumStatusCopyWith<$Res> {
  factory _$$MediumStatusImplCopyWith(
          _$MediumStatusImpl value, $Res Function(_$MediumStatusImpl) then) =
      __$$MediumStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(includeIfNull: false) String? status});
}

/// @nodoc
class __$$MediumStatusImplCopyWithImpl<$Res>
    extends _$MediumStatusCopyWithImpl<$Res, _$MediumStatusImpl>
    implements _$$MediumStatusImplCopyWith<$Res> {
  __$$MediumStatusImplCopyWithImpl(
      _$MediumStatusImpl _value, $Res Function(_$MediumStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediumStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
  }) {
    return _then(_$MediumStatusImpl(
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
class _$MediumStatusImpl implements _MediumStatus {
  const _$MediumStatusImpl(
      {@JsonKey(includeIfNull: false) this.id,
      @JsonKey(includeIfNull: false) this.status});

  factory _$MediumStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediumStatusImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final int? id;
  @override
  @JsonKey(includeIfNull: false)
  final String? status;

  @override
  String toString() {
    return 'MediumStatus(id: $id, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediumStatusImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status);

  /// Create a copy of MediumStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediumStatusImplCopyWith<_$MediumStatusImpl> get copyWith =>
      __$$MediumStatusImplCopyWithImpl<_$MediumStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediumStatusImplToJson(
      this,
    );
  }
}

abstract class _MediumStatus implements MediumStatus {
  const factory _MediumStatus(
          {@JsonKey(includeIfNull: false) final int? id,
          @JsonKey(includeIfNull: false) final String? status}) =
      _$MediumStatusImpl;

  factory _MediumStatus.fromJson(Map<String, dynamic> json) =
      _$MediumStatusImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  int? get id;
  @override
  @JsonKey(includeIfNull: false)
  String? get status;

  /// Create a copy of MediumStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediumStatusImplCopyWith<_$MediumStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
