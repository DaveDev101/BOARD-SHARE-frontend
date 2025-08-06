import 'package:boardshare/packages/data_models/account_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'org.freezed.dart';
part 'org.g.dart';

@freezed
sealed class Org with _$Org {
  const factory Org({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeIfNull: false) String? name,
    @JsonKey(includeIfNull: false) String? businessNo,
    @JsonKey(includeIfNull: false) AccountStatus? status,
    @JsonKey(includeIfNull: false) String? phone,
    @JsonKey(includeIfNull: false) String? email,
    @JsonKey(includeIfNull: false) String? notes,
    @JsonKey(includeIfNull: false) String? zipCode,
    @JsonKey(includeIfNull: false) String? address1,
    @JsonKey(includeIfNull: false) String? address2,
    @JsonKey(includeIfNull: false) String? adminNotes,
    @JsonKey(includeIfNull: false) DateTime? createdAt,
    @JsonKey(includeIfNull: false) DateTime? updatedAt,
  }) = _Org;

  factory Org.fromJson(Map<String, Object?> json) => _$OrgFromJson(json);
}
