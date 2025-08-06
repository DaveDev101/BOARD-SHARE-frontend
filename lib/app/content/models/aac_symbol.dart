import 'package:boardshare/app/content/models/medium.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'aac_symbol.freezed.dart';
part 'aac_symbol.g.dart';

@freezed
sealed class AACSymbol with _$AACSymbol {
  const factory AACSymbol({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeIfNull: false) String? symbolTitle,
    @JsonKey(includeIfNull: false) String? symbolExcerpt,
    @JsonKey(includeIfNull: false) AACSymbolStatus? symbolStatus,
    @JsonKey(includeIfNull: false) bool? isCommentOpen,
    @JsonKey(includeIfNull: false) Medium? medium,
    @JsonKey(includeIfNull: false) int? commentCount,
    @JsonKey(includeIfNull: false) int? likeCount,
    @JsonKey(includeIfNull: false) AACSymbolSystem? symbolSystem,
    @JsonKey(includeIfNull: false) String? description,
    @JsonKey(includeIfNull: false) DateTime? createdAt,
    @JsonKey(includeIfNull: false) DateTime? updatedAt,
  }) = _AACSymbol;

  factory AACSymbol.fromJson(Map<String, Object?> json) =>
      _$AACSymbolFromJson(json);
}

@freezed
sealed class AACSymbolStatus with _$AACSymbolStatus {
  const factory AACSymbolStatus({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeIfNull: false) String? status,
  }) = _AACSymbolStatus;

  factory AACSymbolStatus.fromJson(Map<String, Object?> json) =>
      _$AACSymbolStatusFromJson(json);
}

@freezed
sealed class AACSymbolSystem with _$AACSymbolSystem {
  const factory AACSymbolSystem({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeIfNull: false) String? systemName,
    @JsonKey(includeIfNull: false) String? issuer,
    @JsonKey(includeIfNull: false) String? description,
  }) = _AACSymbolSystem;

  factory AACSymbolSystem.fromJson(Map<String, Object?> json) =>
      _$AACSymbolSystemFromJson(json);
}
