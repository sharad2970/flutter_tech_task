// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_pitch_booking_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePitchBookingRequest _$UpdatePitchBookingRequestFromJson(
    Map<String, dynamic> json) {
  return UpdatePitchBookingRequest(
    date: json['date'] as String,
    startTime: json['start_time'] as String,
    endTime: json['end_time'] as String,
    pitchId: json['pitch_id'] as String,
    orderId: json['order_id'] as String,
    subOrderId: json['sub_order_id'] as String,
    bottleId: json['bottleId'] as int,
    price: json['price'] as String,
  );
}

Map<String, dynamic> _$UpdatePitchBookingRequestToJson(
        UpdatePitchBookingRequest instance) =>
    <String, dynamic>{
      'date': instance.date,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'pitch_id': instance.pitchId,
      'order_id': instance.orderId,
      'sub_order_id': instance.subOrderId,
      'bottleId': instance.bottleId,
      'price': instance.price,
    };
