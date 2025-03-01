import 'package:boardshare/app/user/models/user.dart';
import 'package:boardshare/packages/data_models/account_role.dart';
import 'package:boardshare/packages/data_models/account_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'org.dart';

part 'user_org.freezed.dart';
part 'user_org.g.dart';

@freezed
class UserOrg with _$UserOrg {
  const factory UserOrg({
    @JsonKey(includeIfNull: false) int? userId,
    @JsonKey(includeIfNull: false) int? orgId,
    @JsonKey(includeIfNull: false) AccountStatus? status,
    @JsonKey(includeIfNull: false) AccountRole? role,
    @JsonKey(includeIfNull: false) String? avatarPath,
    @JsonKey(includeIfNull: false) String? notes,
    @JsonKey(includeIfNull: false) DateTime? joinedAt,
    @JsonKey(includeIfNull: false) DateTime? leftAt,
    @JsonKey(includeIfNull: false) DateTime? createdAt,
    @JsonKey(includeIfNull: false) DateTime? updatedAt,
    @JsonKey(includeIfNull: false) User? user,
    @JsonKey(includeIfNull: false) Org? org,
  }) = _UserOrg;

  factory UserOrg.fromJson(Map<String, Object?> json) =>
      _$UserOrgFromJson(json);
}
