// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueDetailResponse _$LeagueDetailResponseFromJson(Map<String, dynamic> json) {
  return LeagueDetailResponse()
    ..data = (json['leaguesList'] as List)
        ?.map((e) => e == null
            ? null
            : LeagueResponseEntity.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$LeagueDetailResponseToJson(
        LeagueDetailResponse instance) =>
    <String, dynamic>{
      'leaguesList': instance.data,
    };
