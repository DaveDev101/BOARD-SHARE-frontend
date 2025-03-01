import 'package:freezed_annotation/freezed_annotation.dart';

part 'mock_home.freezed.dart';
part 'mock_home.g.dart';

@freezed
class MockHome with _$MockHome {
  const factory MockHome({
    @JsonKey(includeIfNull: false) int? id,
    required String status,
    required String message,
    required String version,
    @Default("no-email@example.com") String email,
  }) = _MockHome;

  factory MockHome.fromJson(Map<String, Object?> json) =>
      _$MockHomeFromJson(json);
}
