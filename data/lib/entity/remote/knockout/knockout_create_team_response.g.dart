// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'knockout_create_team_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KnockoutTeamCreateResponse _$KnockoutTeamCreateResponseFromJson(
    Map<String, dynamic> json) {
  return KnockoutTeamCreateResponse(
    data: json['data'] == null
        ? null
        : KnockoutCreateTeamResponseEntity.fromJson(
            json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$KnockoutTeamCreateResponseToJson(
        KnockoutTeamCreateResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
