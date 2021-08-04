// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_list_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueListResponseEntity _$LeagueListResponseEntityFromJson(
    Map<String, dynamic> json) {
  return LeagueListResponseEntity()
    ..data = json['data'] == null
        ? null
        : LeagueListInfoEntity.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$LeagueListResponseEntityToJson(
        LeagueListResponseEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
