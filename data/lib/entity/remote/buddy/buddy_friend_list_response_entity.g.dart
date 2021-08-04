// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buddy_friend_list_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuddyFriendListResponseEntity _$BuddyFriendListResponseEntityFromJson(
    Map<String, dynamic> json) {
  return BuddyFriendListResponseEntity()
    ..data = json['data'] == null
        ? null
        : BuddyFriendListInfoEntity.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BuddyFriendListResponseEntityToJson(
        BuddyFriendListResponseEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
