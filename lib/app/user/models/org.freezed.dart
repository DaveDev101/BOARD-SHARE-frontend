// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'org.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Org _$OrgFromJson(Map<String, dynamic> json) {
  return _Org.fromJson(json);
}

/// @nodoc
mixin _$Org {
  @JsonKey(includeIfNull: false)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get businessNo => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  AccountStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get zipcode => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get adminNotes => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Org to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Org
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrgCopyWith<Org> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrgCopyWith<$Res> {
  factory $OrgCopyWith(Org value, $Res Function(Org) then) =
      _$OrgCopyWithImpl<$Res, Org>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(includeIfNull: false) String? name,
      @JsonKey(includeIfNull: false) String? businessNo,
      @JsonKey(includeIfNull: false) AccountStatus? status,
      @JsonKey(includeIfNull: false) String? phone,
      @JsonKey(includeIfNull: false) String? email,
      @JsonKey(includeIfNull: false) String? zipcode,
      @JsonKey(includeIfNull: false) String? address,
      @JsonKey(includeIfNull: false) String? description,
      @JsonKey(includeIfNull: false) String? adminNotes,
      @JsonKey(includeIfNull: false) DateTime? createdAt,
      @JsonKey(includeIfNull: false) DateTime? updatedAt});

  $AccountStatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$OrgCopyWithImpl<$Res, $Val extends Org> implements $OrgCopyWith<$Res> {
  _$OrgCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Org
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? businessNo = freezed,
    Object? status = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? zipcode = freezed,
    Object? address = freezed,
    Object? description = freezed,
    Object? adminNotes = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      businessNo: freezed == businessNo
          ? _value.businessNo
          : businessNo // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountStatus?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      zipcode: freezed == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      adminNotes: freezed == adminNotes
          ? _value.adminNotes
          : adminNotes // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of Org
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountStatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $AccountStatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrgImplCopyWith<$Res> implements $OrgCopyWith<$Res> {
  factory _$$OrgImplCopyWith(_$OrgImpl value, $Res Function(_$OrgImpl) then) =
      __$$OrgImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) int? id,
      @JsonKey(includeIfNull: false) String? name,
      @JsonKey(includeIfNull: false) String? businessNo,
      @JsonKey(includeIfNull: false) AccountStatus? status,
      @JsonKey(includeIfNull: false) String? phone,
      @JsonKey(includeIfNull: false) String? email,
      @JsonKey(includeIfNull: false) String? zipcode,
      @JsonKey(includeIfNull: false) String? address,
      @JsonKey(includeIfNull: false) String? description,
      @JsonKey(includeIfNull: false) String? adminNotes,
      @JsonKey(includeIfNull: false) DateTime? createdAt,
      @JsonKey(includeIfNull: false) DateTime? updatedAt});

  @override
  $AccountStatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$OrgImplCopyWithImpl<$Res> extends _$OrgCopyWithImpl<$Res, _$OrgImpl>
    implements _$$OrgImplCopyWith<$Res> {
  __$$OrgImplCopyWithImpl(_$OrgImpl _value, $Res Function(_$OrgImpl) _then)
      : super(_value, _then);

  /// Create a copy of Org
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? businessNo = freezed,
    Object? status = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? zipcode = freezed,
    Object? address = freezed,
    Object? description = freezed,
    Object? adminNotes = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$OrgImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      businessNo: freezed == businessNo
          ? _value.businessNo
          : businessNo // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountStatus?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      zipcode: freezed == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      adminNotes: freezed == adminNotes
          ? _value.adminNotes
          : adminNotes // ignore: cast_nullable_to_non_nullable
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
class _$OrgImpl implements _Org {
  const _$OrgImpl(
      {@JsonKey(includeIfNull: false) this.id,
      @JsonKey(includeIfNull: false) this.name,
      @JsonKey(includeIfNull: false) this.businessNo,
      @JsonKey(includeIfNull: false) this.status,
      @JsonKey(includeIfNull: false) this.phone,
      @JsonKey(includeIfNull: false) this.email,
      @JsonKey(includeIfNull: false) this.zipcode,
      @JsonKey(includeIfNull: false) this.address,
      @JsonKey(includeIfNull: false) this.description,
      @JsonKey(includeIfNull: false) this.adminNotes,
      @JsonKey(includeIfNull: false) this.createdAt,
      @JsonKey(includeIfNull: false) this.updatedAt});

  factory _$OrgImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrgImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final int? id;
  @override
  @JsonKey(includeIfNull: false)
  final String? name;
  @override
  @JsonKey(includeIfNull: false)
  final String? businessNo;
  @override
  @JsonKey(includeIfNull: false)
  final AccountStatus? status;
  @override
  @JsonKey(includeIfNull: false)
  final String? phone;
  @override
  @JsonKey(includeIfNull: false)
  final String? email;
  @override
  @JsonKey(includeIfNull: false)
  final String? zipcode;
  @override
  @JsonKey(includeIfNull: false)
  final String? address;
  @override
  @JsonKey(includeIfNull: false)
  final String? description;
  @override
  @JsonKey(includeIfNull: false)
  final String? adminNotes;
  @override
  @JsonKey(includeIfNull: false)
  final DateTime? createdAt;
  @override
  @JsonKey(includeIfNull: false)
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Org(id: $id, name: $name, businessNo: $businessNo, status: $status, phone: $phone, email: $email, zipcode: $zipcode, address: $address, description: $description, adminNotes: $adminNotes, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrgImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.businessNo, businessNo) ||
                other.businessNo == businessNo) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.zipcode, zipcode) || other.zipcode == zipcode) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.adminNotes, adminNotes) ||
                other.adminNotes == adminNotes) &&
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
      name,
      businessNo,
      status,
      phone,
      email,
      zipcode,
      address,
      description,
      adminNotes,
      createdAt,
      updatedAt);

  /// Create a copy of Org
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrgImplCopyWith<_$OrgImpl> get copyWith =>
      __$$OrgImplCopyWithImpl<_$OrgImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrgImplToJson(
      this,
    );
  }
}

abstract class _Org implements Org {
  const factory _Org(
      {@JsonKey(includeIfNull: false) final int? id,
      @JsonKey(includeIfNull: false) final String? name,
      @JsonKey(includeIfNull: false) final String? businessNo,
      @JsonKey(includeIfNull: false) final AccountStatus? status,
      @JsonKey(includeIfNull: false) final String? phone,
      @JsonKey(includeIfNull: false) final String? email,
      @JsonKey(includeIfNull: false) final String? zipcode,
      @JsonKey(includeIfNull: false) final String? address,
      @JsonKey(includeIfNull: false) final String? description,
      @JsonKey(includeIfNull: false) final String? adminNotes,
      @JsonKey(includeIfNull: false) final DateTime? createdAt,
      @JsonKey(includeIfNull: false) final DateTime? updatedAt}) = _$OrgImpl;

  factory _Org.fromJson(Map<String, dynamic> json) = _$OrgImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  int? get id;
  @override
  @JsonKey(includeIfNull: false)
  String? get name;
  @override
  @JsonKey(includeIfNull: false)
  String? get businessNo;
  @override
  @JsonKey(includeIfNull: false)
  AccountStatus? get status;
  @override
  @JsonKey(includeIfNull: false)
  String? get phone;
  @override
  @JsonKey(includeIfNull: false)
  String? get email;
  @override
  @JsonKey(includeIfNull: false)
  String? get zipcode;
  @override
  @JsonKey(includeIfNull: false)
  String? get address;
  @override
  @JsonKey(includeIfNull: false)
  String? get description;
  @override
  @JsonKey(includeIfNull: false)
  String? get adminNotes;
  @override
  @JsonKey(includeIfNull: false)
  DateTime? get createdAt;
  @override
  @JsonKey(includeIfNull: false)
  DateTime? get updatedAt;

  /// Create a copy of Org
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrgImplCopyWith<_$OrgImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
