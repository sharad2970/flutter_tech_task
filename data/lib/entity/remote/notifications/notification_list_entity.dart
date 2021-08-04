import 'package:domain/model/notifications/notification_data.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notification_list_entity.g.dart';

@JsonSerializable()
class NotificationListEntity
    implements
        BaseLayerDataTransformer<NotificationListEntity, NotificationData> {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: "title")
  final String title;
  @JsonKey(name: "message")
  final String message;
  @JsonKey(name: 'is_sent')
  final int isSent;
  @JsonKey(name: 'status')
  final int status;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @JsonKey(name: "deleted_at")
  final bool deletedAt;
  @JsonKey(name: "action")
  final String action;
  @JsonKey(name: "type")
  final String type;
  @JsonKey(name: "type_id")
  final String typeId;
  @JsonKey(name: "sub_order_id")
  final String subOrderId;
  @JsonKey(name: "date")
  final String date;

  NotificationListEntity(
    this.id,
    this.title,
    this.message,
    this.isSent,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.action,
    this.type,
    this.typeId,
    this.subOrderId,
    this.date,
  );

  factory NotificationListEntity.fromJson(Map<String, dynamic> json) =>
      _$NotificationListEntityFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationListEntityToJson(this);

  @override
  NotificationListEntity restore(data) {
    throw UnimplementedError();
  }

  @override
  NotificationData transform() {
    return NotificationData(
      title: this.title,
      message: this.message,
      createdAt: this.createdAt,
      type: this.type,
      id: this.id,
      typeId: this.typeId,
      subOrderId: this.subOrderId,
      date: this.date,
    );
  }
}
