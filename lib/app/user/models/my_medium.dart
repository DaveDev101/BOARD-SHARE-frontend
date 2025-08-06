import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_medium.freezed.dart';
part 'my_medium.g.dart';

@freezed
sealed class MyMedium with _$MyMedium {
  const factory MyMedium({
    @JsonKey(includeIfNull: false) int? sequence,
    @JsonKey(includeIfNull: false) int? mediumId,
    @JsonKey(includeIfNull: false) bool? isMain,
    @JsonKey(includeIfNull: false) double? screenX,
    @JsonKey(includeIfNull: false) double? screenY,
    @JsonKey(includeIfNull: false) String? customTitle,
    @JsonKey(includeIfNull: false) String? mediumPath,
    @JsonKey(includeIfNull: false) String? mediumUrl,
    @JsonKey(includeIfNull: false) String? mediumMimeType,
    @JsonKey(includeIfNull: false) int? authorID,
    @JsonKey(includeIfNull: false) int? authorOrgID,
    @JsonKey(includeIfNull: false) DateTime? createdAt,
    @JsonKey(includeIfNull: false) DateTime? updatedAt,
  }) = _MyMedium;

  factory MyMedium.fromJson(Map<String, Object?> json) =>
      _$MyMediumFromJson(json);
}
