// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'knockout_list_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KnockoutListResponseEntity _$KnockoutListResponseEntityFromJson(
    Map<String, dynamic> json) {
  return KnockoutListResponseEntity()
    ..data = json['data'] == null
        ? null
        : KnockoutListInfoEntity.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$KnockoutListResponseEntityToJson(
        KnockoutListResponseEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
