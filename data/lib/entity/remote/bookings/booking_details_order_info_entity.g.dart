// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_details_order_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingDetailsInfoEntity _$BookingDetailsInfoEntityFromJson(
    Map<String, dynamic> json) {
  return BookingDetailsInfoEntity(
    date: json['date'] as String,
    time: json['time'] as String,
    duration: json['Duration'] as String,
    pitchNumber: json['pitch_number'] as int,
    orderId: json['order_id'] as int,
    bookingDate: json['booking_date'] as String,
    bookingType: json['booking_type'] as String,
    paymentType: json['payment_type'] as String,
    paymentStatus: json['payment_status'] as String,
    cancelBooking: json['cancel'] as bool,
    amountPaid: json['paid_amount'] as String,
    bottleCount: json['bottle_count'] as String,
  )..totalAmount = json['total_amount'] as String;
}

Map<String, dynamic> _$BookingDetailsInfoEntityToJson(
        BookingDetailsInfoEntity instance) =>
    <String, dynamic>{
      'date': instance.date,
      'time': instance.time,
      'Duration': instance.duration,
      'pitch_number': instance.pitchNumber,
      'order_id': instance.orderId,
      'booking_date': instance.bookingDate,
      'booking_type': instance.bookingType,
      'payment_type': instance.paymentType,
      'payment_status': instance.paymentStatus,
      'cancel': instance.cancelBooking,
      'paid_amount': instance.amountPaid,
      'total_amount': instance.totalAmount,
      'bottle_count': instance.bottleCount,
    };
