// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_details_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailsResponseEntity _$OrderDetailsResponseEntityFromJson(
    Map<String, dynamic> json) {
  return OrderDetailsResponseEntity(
    data: json['data'] == null
        ? null
        : BookingDetailsInfoEntity.fromJson(
            json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$OrderDetailsResponseEntityToJson(
        OrderDetailsResponseEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
