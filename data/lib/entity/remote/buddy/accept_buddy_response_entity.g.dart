// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_buddy_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcceptBuddyResponseEntity _$AcceptBuddyResponseEntityFromJson(
    Map<String, dynamic> json) {
  return AcceptBuddyResponseEntity()
    ..message = json['message'] as String
    ..data = json['data'] == null
        ? null
        : AcceptBuddyEntity.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AcceptBuddyResponseEntityToJson(
        AcceptBuddyResponseEntity instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

AcceptBuddyEntity _$AcceptBuddyEntityFromJson(Map<String, dynamic> json) {
  return AcceptBuddyEntity()
    ..id = json['id'] as int
    ..senderId = json['sender_id'] as int
    ..receiverId = json['receiver_id'] as int
    ..status = json['status'] as int
    ..updatedDate = json['updated_at'] as String;
}

Map<String, dynamic> _$AcceptBuddyEntityToJson(AcceptBuddyEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sender_id': instance.senderId,
      'receiver_id': instance.receiverId,
      'status': instance.status,
      'updated_at': instance.updatedDate,
    };
