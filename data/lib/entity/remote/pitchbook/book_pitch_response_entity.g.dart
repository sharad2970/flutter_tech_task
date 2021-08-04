// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_pitch_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookPitchesResponseEntity _$BookPitchesResponseEntityFromJson(
    Map<String, dynamic> json) {
  return BookPitchesResponseEntity(
    orderId: json['order_id'] as int,
    subOrderId: json['sub_order_id'] as int,
  );
}

Map<String, dynamic> _$BookPitchesResponseEntityToJson(
        BookPitchesResponseEntity instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'sub_order_id': instance.subOrderId,
    };
