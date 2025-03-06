import 'package:freezed_annotation/freezed_annotation.dart';

part 'medium.freezed.dart';
part 'medium.g.dart';

@freezed
class Medium with _$Medium {
  const factory Medium({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeIfNull: false) String? mediumTitle,
    @JsonKey(includeIfNull: false) String? mediumPath,
    @JsonKey(includeIfNull: false) String? mediumUrl,
    @JsonKey(includeIfNull: false) String? mediumMimeType,
    @JsonKey(includeIfNull: false) MediumStatus? mediumStatus,
    @JsonKey(includeIfNull: false) int? userId,
    @JsonKey(includeIfNull: false) int? userOrgId,
    @JsonKey(includeIfNull: false) String? description,
    @JsonKey(includeIfNull: false) DateTime? createdAt,
    @JsonKey(includeIfNull: false) DateTime? updatedAt,
  }) = _Medium;

  factory Medium.fromJson(Map<String, Object?> json) => _$MediumFromJson(json);
}

@freezed
class MediumStatus with _$MediumStatus {
  const factory MediumStatus({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeIfNull: false) String? status,
  }) = _MediumStatus;

  factory MediumStatus.fromJson(Map<String, Object?> json) =>
      _$MediumStatusFromJson(json);
}
