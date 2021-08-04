import 'package:json_annotation/json_annotation.dart';

part 'token_invaild_request_entity.g.dart';

@JsonSerializable()
class TokenInvalidRequestEntity {
  @JsonKey(name: "device_id")
  final String deviceId;

  TokenInvalidRequestEntity({
    this.deviceId,
  });

  factory TokenInvalidRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$TokenInvalidRequestEntityFromJson(json);

  Map<String, dynamic> toJson() => _$TokenInvalidRequestEntityToJson(this);
}
