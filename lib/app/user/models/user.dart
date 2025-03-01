import 'package:boardshare/packages/data_models/account_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeIfNull: false) String? email,
    @JsonKey(includeIfNull: false) String? password,
    @JsonKey(includeIfNull: false) String? displayName,
    @JsonKey(includeIfNull: false) AccountStatus? status,
    @JsonKey(includeIfNull: false) String? notes,
    @JsonKey(includeIfNull: false) DateTime? createdAt,
    @JsonKey(includeIfNull: false) DateTime? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
