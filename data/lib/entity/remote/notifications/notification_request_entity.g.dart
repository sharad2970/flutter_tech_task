// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationRequestEntity _$NotificationRequestEntityFromJson(
    Map<String, dynamic> json) {
  return NotificationRequestEntity(
    token: json['token'] as String,
    deviceId: json['device_id'] as String,
    osType: json['os_type'] as String,
    deviceModel: json['device_model'] as String,
    deviceName: json['device_name'] as String,
    osVersion: json['os_version'] as String,
  );
}

Map<String, dynamic> _$NotificationRequestEntityToJson(
        NotificationRequestEntity instance) =>
    <String, dynamic>{
      'token': instance.token,
      'device_id': instance.deviceId,
      'os_type': instance.osType,
      'device_model': instance.deviceModel,
      'device_name': instance.deviceName,
      'os_version': instance.osVersion,
    };
