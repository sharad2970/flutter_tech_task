
import 'package:data/entity/remote/notifications/notification_list_info_entity.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:domain/model/notifications/notification_list_info.dart';

part 'notification_list_response_entity.g.dart';

@JsonSerializable()
class NotificationListResponseEntity
    implements
        BaseLayerDataTransformer<NotificationListResponseEntity, NotificationListInfo> {
  @JsonKey(name: 'data')
 final NotificationListInfoEntity data;

  NotificationListResponseEntity({this.data});

  factory NotificationListResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$NotificationListResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationListResponseEntityToJson(this);

  @override
  NotificationListResponseEntity restore(NotificationListInfo data) {
    throw UnimplementedError();
  }

  @override
  NotificationListInfo transform() {

    if (data != null) return data.transform();

    return NotificationListInfo();
  }
}
