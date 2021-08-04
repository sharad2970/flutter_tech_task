// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_page_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FaqPageResponseEntity _$FaqPageResponseEntityFromJson(
    Map<String, dynamic> json) {
  return FaqPageResponseEntity()
    ..data = (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : FaqPageResponseInfoEntity.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$FaqPageResponseEntityToJson(
        FaqPageResponseEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
