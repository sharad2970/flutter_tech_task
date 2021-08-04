// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_list_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationListInfoEntity _$NotificationListInfoEntityFromJson(
    Map<String, dynamic> json) {
  return NotificationListInfoEntity(
    count: json['count'] as int,
    skip: json['skip'] as int,
    take: json['take'] as int,
  )..data = (json['NotificationList'] as List)
      ?.map((e) => e == null
          ? null
          : NotificationListEntity.fromJson(e as Map<String, dynamic>))
      ?.toList();
}

Map<String, dynamic> _$NotificationListInfoEntityToJson(
        NotificationListInfoEntity instance) =>
    <String, dynamic>{
      'NotificationList': instance.data,
      'count': instance.count,
      'skip': instance.skip,
      'take': instance.take,
    };
