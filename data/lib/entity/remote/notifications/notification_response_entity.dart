import 'package:domain/model/notifications/device_details.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notification_response_entity.g.dart';

@JsonSerializable()
class NotificationResponseEntity
    implements
        BaseLayerDataTransformer<NotificationResponseEntity, DeviceDetails> {
  @JsonKey(name: 'message')
 final String message;
  @JsonKey(name: 'data')
 final NotificationEntity data;

  NotificationResponseEntity({this.message,this.data});

  factory NotificationResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationResponseEntityToJson(this);

  @override
  NotificationResponseEntity restore(DeviceDetails data) {
    throw UnimplementedError();
  }

  @override
  DeviceDetails transform() {
    return data.transform();
  }
}

@JsonSerializable()
class NotificationEntity
    implements BaseLayerDataTransformer<NotificationEntity, DeviceDetails> {
  @JsonKey(name: 'token_id')
  int tokenId;

  NotificationEntity();

  factory NotificationEntity.fromJson(Map<String, dynamic> json) =>
      _$NotificationEntityFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationEntityToJson(this);

  @override
  NotificationEntity restore(DeviceDetails data) {
    throw UnimplementedError();
  }

  @override
  DeviceDetails transform() {
    return DeviceDetails(
      deviceId: tokenId.toString() ?? '',
    );
  }
}
