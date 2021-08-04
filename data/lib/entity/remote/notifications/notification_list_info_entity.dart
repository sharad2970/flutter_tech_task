import 'package:data/entity/remote/notifications/notification_list_entity.dart';
import 'package:domain/model/notifications/notification_list_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notification_list_info_entity.g.dart';

@JsonSerializable()
class NotificationListInfoEntity
    implements
        BaseLayerDataTransformer<NotificationListInfoEntity,
            NotificationListInfo> {
  @JsonKey(name: 'NotificationList')
  List<NotificationListEntity> data;
  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'skip')
  final int skip;
  @JsonKey(name: 'take')
  final int take;

  NotificationListInfoEntity({this.count, this.skip, this.take});

  factory NotificationListInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$NotificationListInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationListInfoEntityToJson(this);

  @override
  NotificationListInfoEntity restore(NotificationListInfo data) {
    throw UnimplementedError();
  }

  @override
  NotificationListInfo transform() {
    return NotificationListInfo(
      count: count,
      skip: skip,
      take: take,
      list: data.map((e) => e.transform()).toList(),
    );
  }
}
