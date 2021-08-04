// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buddy_friend_list_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuddyFriendListInfoEntity _$BuddyFriendListInfoEntityFromJson(
    Map<String, dynamic> json) {
  return BuddyFriendListInfoEntity()
    ..data = (json['acceptedPlaylists'] as List)
        ?.map((e) => e == null
            ? null
            : BuddyFriendListEntity.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..count = json['count'] as int
    ..skip = json['skip'] as int
    ..take = json['take'] as int;
}

Map<String, dynamic> _$BuddyFriendListInfoEntityToJson(
        BuddyFriendListInfoEntity instance) =>
    <String, dynamic>{
      'acceptedPlaylists': instance.data,
      'count': instance.count,
      'skip': instance.skip,
      'take': instance.take,
    };
