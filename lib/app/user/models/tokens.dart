import 'package:freezed_annotation/freezed_annotation.dart';

part 'tokens.freezed.dart';
part 'tokens.g.dart';

@freezed
sealed class Tokens with _$Tokens {
  const factory Tokens({
    required String accessToken,
    required String refreshToken,
  }) = _Tokens;

  factory Tokens.fromJson(Map<String, Object?> json) => _$TokensFromJson(json);
}
