// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_league_team_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateLeagueTeamResponse _$CreateLeagueTeamResponseFromJson(
    Map<String, dynamic> json) {
  return CreateLeagueTeamResponse(
    message: json['message'] as String,
    data: json['data'] == null
        ? null
        : CreateLeagueTeamResponseEntity.fromJson(
            json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateLeagueTeamResponseToJson(
        CreateLeagueTeamResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
