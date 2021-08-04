// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_fixtures_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpcomingFixturesResponse _$UpcomingFixturesResponseFromJson(
    Map<String, dynamic> json) {
  return UpcomingFixturesResponse(
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : UpcomingResponseEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$UpcomingFixturesResponseToJson(
        UpcomingFixturesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
