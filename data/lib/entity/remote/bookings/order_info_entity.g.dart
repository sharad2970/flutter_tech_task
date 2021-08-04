// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderInfoEntity _$OrderInfoEntityFromJson(Map<String, dynamic> json) {
  return OrderInfoEntity(
    orderId: json['order_id'] as int,
    pitchId: json['pitch_id'] as int,
    date: json['date'] as String,
    startTime: json['start_time'] as String,
    endTime: json['end_time'] as String,
  )..subOrderId = json['sub_order_id'] as int;
}

Map<String, dynamic> _$OrderInfoEntityToJson(OrderInfoEntity instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'pitch_id': instance.pitchId,
      'date': instance.date,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'sub_order_id': instance.subOrderId,
    };
