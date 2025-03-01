import 'package:boardshare/app/user/models/tokens.dart';
import 'package:boardshare/app/user/models/user_org.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_result.freezed.dart';
part 'signin_result.g.dart';

@freezed
class SigninResult with _$SigninResult {
  const factory SigninResult({
    required Tokens tokens,
    required UserOrg user,
  }) = _SigninResult;

  factory SigninResult.fromJson(Map<String, Object?> json) =>
      _$SigninResultFromJson(json);
}
