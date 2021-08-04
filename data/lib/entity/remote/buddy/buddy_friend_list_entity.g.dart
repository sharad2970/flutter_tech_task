// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buddy_friend_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuddyFriendListEntity _$BuddyFriendListEntityFromJson(
    Map<String, dynamic> json) {
  return BuddyFriendListEntity()
    ..id = json['id'] as int
    ..mobile = json['mobile'] as String
    ..email = json['email'] as String
    ..firstName = json['first_name'] as String
    ..lastName = json['last_name'] as String
    ..avatar = json['avatar'] as String
    ..playerId = json['player_id'] as int
    ..playerIds = json['player_ids'] as int
    ..requestedDate = json['requested_at'] as String
    ..playerFirstName = json['player_first_name'] as String
    ..playerLastName = json['player_last_name'] as String
    ..playerAvatar = json['player_avatar'] as String
    ..teamMember = json['team_member'] as bool;
}

Map<String, dynamic> _$BuddyFriendListEntityToJson(
        BuddyFriendListEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mobile': instance.mobile,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar': instance.avatar,
      'player_id': instance.playerId,
      'player_ids': instance.playerIds,
      'requested_at': instance.requestedDate,
      'player_first_name': instance.playerFirstName,
      'player_last_name': instance.playerLastName,
      'player_avatar': instance.playerAvatar,
      'team_member': instance.teamMember,
    };
