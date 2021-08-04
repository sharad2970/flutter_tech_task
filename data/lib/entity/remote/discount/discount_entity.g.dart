// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiscountEntity _$DiscountEntityFromJson(Map<String, dynamic> json) {
  return DiscountEntity(
    bookingFor10: json['for_10_bookings'] as int,
    bookingFor20: json['for_20_bookings'] as int,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$DiscountEntityToJson(DiscountEntity instance) =>
    <String, dynamic>{
      'for_10_bookings': instance.bookingFor10,
      'for_20_bookings': instance.bookingFor20,
      'description': instance.description,
    };
