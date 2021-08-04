// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_league_team_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateLeagueTeamRequestEntity _$CreateLeagueTeamRequestEntityFromJson(
    Map<String, dynamic> json) {
  return CreateLeagueTeamRequestEntity(
    typeId: json['type_id'] as String,
    teamId: json['team_id'] as String,
    type: json['type'] as String,
    playerIds: (json['players'] as List)
        ?.map((e) => e == null
            ? null
            : PlayerIdRequestEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CreateLeagueTeamRequestEntityToJson(
        CreateLeagueTeamRequestEntity instance) =>
    <String, dynamic>{
      'type_id': instance.typeId,
      'team_id': instance.teamId,
      'type': instance.type,
      'players': instance.playerIds,
    };
