// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invite_knockout_buddies_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InviteKnockoutBuddiesRequestEntity _$InviteKnockoutBuddiesRequestEntityFromJson(
    Map<String, dynamic> json) {
  return InviteKnockoutBuddiesRequestEntity(
    teamId: json['team_id'] as String,
    type: json['type'] as String,
    knockoutId: json['type_id'] as String,
    players: (json['players'] as List)
        ?.map((e) => e == null
            ? null
            : PlayerIdEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$InviteKnockoutBuddiesRequestEntityToJson(
        InviteKnockoutBuddiesRequestEntity instance) =>
    <String, dynamic>{
      'team_id': instance.teamId,
      'players': instance.players,
      'type': instance.type,
      'type_id': instance.knockoutId,
    };
