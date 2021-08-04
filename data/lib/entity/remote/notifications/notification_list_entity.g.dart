// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationListEntity _$NotificationListEntityFromJson(
    Map<String, dynamic> json) {
  return NotificationListEntity(
    json['id'] as int,
    json['title'] as String,
    json['message'] as String,
    json['is_sent'] as int,
    json['status'] as int,
    json['created_at'] as String,
    json['updated_at'] as String,
    json['deleted_at'] as bool,
    json['action'] as String,
    json['type'] as String,
    json['type_id'] as String,
    json['sub_order_id'] as String,
    json['date'] as String,
  );
}

Map<String, dynamic> _$NotificationListEntityToJson(
        NotificationListEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'message': instance.message,
      'is_sent': instance.isSent,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'action': instance.action,
      'type': instance.type,
      'type_id': instance.typeId,
      'sub_order_id': instance.subOrderId,
      'date': instance.date,
    };
