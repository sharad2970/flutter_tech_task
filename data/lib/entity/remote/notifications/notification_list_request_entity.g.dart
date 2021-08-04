// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_list_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationListRequest _$NotificationListRequestFromJson(
    Map<String, dynamic> json) {
  return NotificationListRequest(
    skip: json['skip'] as String,
    take: json['take'] as String,
  );
}

Map<String, dynamic> _$NotificationListRequestToJson(
        NotificationListRequest instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'take': instance.take,
    };
