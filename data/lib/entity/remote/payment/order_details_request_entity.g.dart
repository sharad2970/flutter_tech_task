// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailsRequestEntity _$OrderDetailsRequestEntityFromJson(
    Map<String, dynamic> json) {
  return OrderDetailsRequestEntity(
    orderId: json['order_id'] as String,
  );
}

Map<String, dynamic> _$OrderDetailsRequestEntityToJson(
        OrderDetailsRequestEntity instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
    };
