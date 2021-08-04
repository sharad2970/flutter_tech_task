// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_pitch_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePitchResponseEntity _$UpdatePitchResponseEntityFromJson(
    Map<String, dynamic> json) {
  return UpdatePitchResponseEntity(
    orderId: json['order_id'] as int,
    subOrderId: json['sub_order_id'] as int,
  );
}

Map<String, dynamic> _$UpdatePitchResponseEntityToJson(
        UpdatePitchResponseEntity instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'sub_order_id': instance.subOrderId,
    };
