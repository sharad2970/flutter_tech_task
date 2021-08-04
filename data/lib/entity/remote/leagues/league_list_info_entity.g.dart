// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_list_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueListInfoEntity _$LeagueListInfoEntityFromJson(Map<String, dynamic> json) {
  return LeagueListInfoEntity()
    ..data = (json['leaguesList'] as List)
        ?.map((e) => e == null
            ? null
            : LeagueResponseEntity.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..count = json['count'] as int
    ..skip = json['skip'] as int
    ..take = json['take'] as int;
}

Map<String, dynamic> _$LeagueListInfoEntityToJson(
        LeagueListInfoEntity instance) =>
    <String, dynamic>{
      'leaguesList': instance.data,
      'count': instance.count,
      'skip': instance.skip,
      'take': instance.take,
    };
