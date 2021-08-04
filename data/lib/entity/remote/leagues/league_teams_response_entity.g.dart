// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_teams_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueTeamsResponseEntity _$LeagueTeamsResponseEntityFromJson(
    Map<String, dynamic> json) {
  return LeagueTeamsResponseEntity(
    json['id'] as int,
    json['team_name'] as String,
    json['team_no'] as int,
    json['captain_id'] as int,
    json['status'] as int,
    json['created_at'] as String,
    json['updated_at'] as String,
    json['captain'] as bool,
    json['payment_status'] as String,
    json['payment_method'] as String,
    json['TeamMember'] as bool,
    (json['teamplayer'] as List)
        ?.map((e) => e == null
            ? null
            : TeamPlayerResponseEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$LeagueTeamsResponseEntityToJson(
        LeagueTeamsResponseEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'team_name': instance.teamName,
      'team_no': instance.teamNumber,
      'captain_id': instance.captainId,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'captain': instance.isCaptain,
      'payment_status': instance.paymentStatus,
      'payment_method': instance.paymentMethod,
      'TeamMember': instance.isTeamMember,
      'teamplayer': instance.teamPlayerList,
    };
