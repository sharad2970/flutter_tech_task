// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_detail_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueDetailResponseEntity _$LeagueDetailResponseEntityFromJson(
    Map<String, dynamic> json) {
  return LeagueDetailResponseEntity()
    ..data = (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : LeagueDetailInfoEntity.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$LeagueDetailResponseEntityToJson(
        LeagueDetailResponseEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
