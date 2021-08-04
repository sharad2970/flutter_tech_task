// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_table_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueTableResponseEntity _$LeagueTableResponseEntityFromJson(
    Map<String, dynamic> json) {
  return LeagueTableResponseEntity(
    teamsData: (json['teamsData'] as List)
        ?.map((e) => e == null
            ? null
            : LeagueTableDataEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$LeagueTableResponseEntityToJson(
        LeagueTableResponseEntity instance) =>
    <String, dynamic>{
      'teamsData': instance.teamsData,
    };
