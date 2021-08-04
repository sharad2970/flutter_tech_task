// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leagues_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeaguesResponse _$LeaguesResponseFromJson(Map<String, dynamic> json) {
  return LeaguesResponse(
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : LeagueResponseEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$LeaguesResponseToJson(LeaguesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
