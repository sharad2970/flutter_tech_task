// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_page_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiscountPageResponseEntity _$DiscountPageResponseEntityFromJson(
    Map<String, dynamic> json) {
  return DiscountPageResponseEntity(
    json['data'] == null
        ? null
        : DiscountEntity.fromJson(json['data'] as Map<String, dynamic>),
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$DiscountPageResponseEntityToJson(
        DiscountPageResponseEntity instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.discountEntity,
    };
