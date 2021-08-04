// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationResponseEntity _$NotificationResponseEntityFromJson(
    Map<String, dynamic> json) {
  return NotificationResponseEntity(
    message: json['message'] as String,
    data: json['data'] == null
        ? null
        : NotificationEntity.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$NotificationResponseEntityToJson(
        NotificationResponseEntity instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

NotificationEntity _$NotificationEntityFromJson(Map<String, dynamic> json) {
  return NotificationEntity()..tokenId = json['token_id'] as int;
}

Map<String, dynamic> _$NotificationEntityToJson(NotificationEntity instance) =>
    <String, dynamic>{
      'token_id': instance.tokenId,
    };
