// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_teams_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueTeamsRequest _$LeagueTeamsRequestFromJson(Map<String, dynamic> json) {
  return LeagueTeamsRequest(
    leagueId: json['league_id'] as String,
  );
}

Map<String, dynamic> _$LeagueTeamsRequestToJson(LeagueTeamsRequest instance) =>
    <String, dynamic>{
      'league_id': instance.leagueId,
    };
