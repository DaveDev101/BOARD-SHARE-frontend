// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mock_home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MockHome _$MockHomeFromJson(Map<String, dynamic> json) {
  return _MockHome.fromJson(json);
}

/// @nodoc
mixin _$MockHome {
  @JsonKey(includeIfNull: false)
  int? get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  /// Serializes this MockHome to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MockHome
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MockHomeCopyWith<MockHome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MockHomeCopyWith<$Res> {
  factory $MockHomeCopyWith(MockHome value, $Res Function(MockHome) then) =
      _$MockHomeCopyWithImpl<$Res, MockHome>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      String status,
      String message,
      String version,
      String email});
}

/// @nodoc
class _$MockHomeCopyWithImpl<$Res, $Val extends MockHome>
    implements $MockHomeCopyWith<$Res> {
  _$MockHomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MockHome
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = null,
    Object? message = null,
    Object? version = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MockHomeImplCopyWith<$Res>
    implements $MockHomeCopyWith<$Res> {
  factory _$$MockHomeImplCopyWith(
          _$MockHomeImpl value, $Res Function(_$MockHomeImpl) then) =
      __$$MockHomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      String status,
      String message,
      String version,
      String email});
}

/// @nodoc
class __$$MockHomeImplCopyWithImpl<$Res>
    extends _$MockHomeCopyWithImpl<$Res, _$MockHomeImpl>
    implements _$$MockHomeImplCopyWith<$Res> {
  __$$MockHomeImplCopyWithImpl(
      _$MockHomeImpl _value, $Res Function(_$MockHomeImpl) _then)
      : super(_value, _then);

  /// Create a copy of MockHome
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = null,
    Object? message = null,
    Object? version = null,
    Object? email = null,
  }) {
    return _then(_$MockHomeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MockHomeImpl implements _MockHome {
  const _$MockHomeImpl(
      {@JsonKey(includeIfNull: false) this.id,
      required this.status,
      required this.message,
      required this.version,
      this.email = "no-email@example.com"});

  factory _$MockHomeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MockHomeImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final int? id;
  @override
  final String status;
  @override
  final String message;
  @override
  final String version;
  @override
  @JsonKey()
  final String email;

  @override
  String toString() {
    return 'MockHome(id: $id, status: $status, message: $message, version: $version, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MockHomeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, status, message, version, email);

  /// Create a copy of MockHome
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MockHomeImplCopyWith<_$MockHomeImpl> get copyWith =>
      __$$MockHomeImplCopyWithImpl<_$MockHomeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MockHomeImplToJson(
      this,
    );
  }
}

abstract class _MockHome implements MockHome {
  const factory _MockHome(
      {@JsonKey(includeIfNull: false) final int? id,
      required final String status,
      required final String message,
      required final String version,
      final String email}) = _$MockHomeImpl;

  factory _MockHome.fromJson(Map<String, dynamic> json) =
      _$MockHomeImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  int? get id;
  @override
  String get status;
  @override
  String get message;
  @override
  String get version;
  @override
  String get email;

  /// Create a copy of MockHome
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MockHomeImplCopyWith<_$MockHomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
