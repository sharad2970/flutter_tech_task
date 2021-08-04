// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rules_and_regulations_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RulesAndRegulationsRequest _$RulesAndRegulationsRequestFromJson(
    Map<String, dynamic> json) {
  return RulesAndRegulationsRequest(
    leagueId: json['league_id'] as String,
    knockoutId: json['knockout_id'] as String,
  );
}

Map<String, dynamic> _$RulesAndRegulationsRequestToJson(
        RulesAndRegulationsRequest instance) =>
    <String, dynamic>{
      'league_id': instance.leagueId,
      'knockout_id': instance.knockoutId,
    };
