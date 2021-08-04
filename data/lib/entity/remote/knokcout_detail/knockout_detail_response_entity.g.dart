// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'knockout_detail_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KnockoutDetailResponseEntity _$KnockoutDetailResponseEntityFromJson(
    Map<String, dynamic> json) {
  return KnockoutDetailResponseEntity()
    ..data = (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : KnockoutDetailInfoEntity.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$KnockoutDetailResponseEntityToJson(
        KnockoutDetailResponseEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
