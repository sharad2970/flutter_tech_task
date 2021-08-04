// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_table_data_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueTableDataEntity _$LeagueTableDataEntityFromJson(
    Map<String, dynamic> json) {
  return LeagueTableDataEntity(
    teamName: json['team_name'] as String,
    goals: json['goals'] as String,
    wins: json['wins'] as int,
    lost: json['lost'] as int,
    draw: json['draw'] as int,
    totalPlayed: json['totalPlayed'] as int,
    points: json['points'] as int,
    teamId: json['team_id'] as int,
    goalsAgainst: json['goalsAgainst'] as String,
  );
}

Map<String, dynamic> _$LeagueTableDataEntityToJson(
        LeagueTableDataEntity instance) =>
    <String, dynamic>{
      'team_name': instance.teamName,
      'goals': instance.goals,
      'wins': instance.wins,
      'lost': instance.lost,
      'draw': instance.draw,
      'totalPlayed': instance.totalPlayed,
      'points': instance.points,
      'team_id': instance.teamId,
      'goalsAgainst': instance.goalsAgainst,
    };
