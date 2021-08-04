// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailsResponse _$OrderDetailsResponseFromJson(Map<String, dynamic> json) {
  return OrderDetailsResponse(
    data: json['data'] == null
        ? null
        : OrderDetailsEntity.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$OrderDetailsResponseToJson(
        OrderDetailsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
