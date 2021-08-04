// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_details_payment_order_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingDetailsPaymentOrderInfoEntity
    _$BookingDetailsPaymentOrderInfoEntityFromJson(Map<String, dynamic> json) {
  return BookingDetailsPaymentOrderInfoEntity()
    ..date = json['date'] as String
    ..time = json['time'] as String
    ..orderId = json['order_id'] as int
    ..paymentStatus = json['payment_status'] as String
    ..canPayBalance = json['pay_balance'] as bool
    ..paymentMethod = json['payment_method'] as String
    ..totalAmount = json['total_amount'] as String
    ..totalAmountPaid = json['amount_paid'] as String
    ..currency = json['currency'] as String;
}

Map<String, dynamic> _$BookingDetailsPaymentOrderInfoEntityToJson(
        BookingDetailsPaymentOrderInfoEntity instance) =>
    <String, dynamic>{
      'date': instance.date,
      'time': instance.time,
      'order_id': instance.orderId,
      'payment_status': instance.paymentStatus,
      'pay_balance': instance.canPayBalance,
      'payment_method': instance.paymentMethod,
      'total_amount': instance.totalAmount,
      'amount_paid': instance.totalAmountPaid,
      'currency': instance.currency,
    };
