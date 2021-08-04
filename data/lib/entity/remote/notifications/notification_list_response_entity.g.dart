// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_list_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationListResponseEntity _$NotificationListResponseEntityFromJson(
    Map<String, dynamic> json) {
  return NotificationListResponseEntity(
    data: json['data'] == null
        ? null
        : NotificationListInfoEntity.fromJson(
            json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$NotificationListResponseEntityToJson(
        NotificationListResponseEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
