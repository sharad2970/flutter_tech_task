// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_list_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueListRequestEntity _$LeagueListRequestEntityFromJson(
    Map<String, dynamic> json) {
  return LeagueListRequestEntity(
    userId: json['user_id'] as String,
    skip: json['skip'] as String,
    take: json['take'] as String,
  );
}

Map<String, dynamic> _$LeagueListRequestEntityToJson(
        LeagueListRequestEntity instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'skip': instance.skip,
      'take': instance.take,
    };
