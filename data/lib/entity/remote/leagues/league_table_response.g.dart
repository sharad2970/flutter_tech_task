// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_table_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueTableResponse _$LeagueTableResponseFromJson(Map<String, dynamic> json) {
  return LeagueTableResponse(
    data: json['data'] == null
        ? null
        : LeagueTableResponseEntity.fromJson(
            json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LeagueTableResponseToJson(
        LeagueTableResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
