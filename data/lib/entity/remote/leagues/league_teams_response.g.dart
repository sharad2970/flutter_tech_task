// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_teams_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueTeamsResponse _$LeagueTeamsResponseFromJson(Map<String, dynamic> json) {
  return LeagueTeamsResponse(
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : LeagueTeamsResponseEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$LeagueTeamsResponseToJson(
        LeagueTeamsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
