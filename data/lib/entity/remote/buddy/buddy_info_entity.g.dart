// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buddy_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuddyInfoEntity _$BuddyInfoEntityFromJson(Map<String, dynamic> json) {
  return BuddyInfoEntity()
    ..id = json['id'] as int
    ..senderId = json['sender_id'] as int
    ..receiverId = json['receiver_id'] as int
    ..status = json['status'] as int
    ..buddyEntity = json['sender'] == null
        ? null
        : BuddyEntity.fromJson(json['sender'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BuddyInfoEntityToJson(BuddyInfoEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sender_id': instance.senderId,
      'receiver_id': instance.receiverId,
      'status': instance.status,
      'sender': instance.buddyEntity,
    };
