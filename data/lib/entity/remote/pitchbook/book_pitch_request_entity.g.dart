// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_pitch_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookPitchRequestEntity _$BookPitchRequestEntityFromJson(
    Map<String, dynamic> json) {
  return BookPitchRequestEntity(
    date: json['date'] as String,
    startTime: json['start_time'] as String,
    endTime: json['end_time'] as String,
    numberOfBookings: json['number_of_booking'] as String,
    price: json['price'] as String,
    recurringStatus: json['recurring_status'] as String,
    playerId: json['player_id'] as String,
    pitchId: json['pitch_id'] as String,
    orderId: json['order_id'] as String,
    orderType: json['order_type'] as String,
    subOrderId: json['sub_order_id'] as String,
    bottleId: json['bottleId'] as int,
  );
}

Map<String, dynamic> _$BookPitchRequestEntityToJson(
        BookPitchRequestEntity instance) =>
    <String, dynamic>{
      'date': instance.date,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'number_of_booking': instance.numberOfBookings,
      'price': instance.price,
      'recurring_status': instance.recurringStatus,
      'player_id': instance.playerId,
      'pitch_id': instance.pitchId,
      'order_id': instance.orderId,
      'order_type': instance.orderType,
      'sub_order_id': instance.subOrderId,
      'bottleId': instance.bottleId,
    };
