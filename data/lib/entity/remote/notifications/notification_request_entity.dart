import 'package:json_annotation/json_annotation.dart';

part 'notification_request_entity.g.dart';

@JsonSerializable()
class NotificationRequestEntity {
  @JsonKey(name: "token")
  final String token;
  @JsonKey(name: "device_id")
  final String deviceId;
  @JsonKey(name: "os_type")
  final String osType;
  @JsonKey(name: "device_model")
  final String deviceModel;
  @JsonKey(name: "device_name")
  final String deviceName;
  @JsonKey(name: "os_version")
  final String osVersion;

  NotificationRequestEntity(
      {this.token,
      this.deviceId,
      this.osType,
      this.deviceModel,
      this.deviceName,
      this.osVersion});

  factory NotificationRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$NotificationRequestEntityFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationRequestEntityToJson(this);
}
