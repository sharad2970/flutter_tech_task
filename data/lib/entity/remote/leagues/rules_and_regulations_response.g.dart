// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rules_and_regulations_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RulesAndRegulationsResponse _$RulesAndRegulationsResponseFromJson(
    Map<String, dynamic> json) {
  return RulesAndRegulationsResponse(
    json['data'] == null
        ? null
        : RulesAndRegulationsResponseEntity.fromJson(
            json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RulesAndRegulationsResponseToJson(
        RulesAndRegulationsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
