import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_role.freezed.dart';
part 'account_role.g.dart';

@freezed
class AccountRole with _$AccountRole {
  const factory AccountRole({
    required int roleId,
    @Default("unknown") String role,
  }) = _AccountRole;

  factory AccountRole.fromJson(Map<String, Object?> json) =>
      _$AccountRoleFromJson(json);
}
