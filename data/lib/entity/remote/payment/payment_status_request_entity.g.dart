// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_status_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentStatusRequestEntity _$PaymentStatusRequestEntityFromJson(
    Map<String, dynamic> json) {
  return PaymentStatusRequestEntity(
    orderId: json['order_id'] as String,
    playerId: json['player_id'] as String,
    paidAmount: json['paid_amt'] as String,
    paymentMethod: json['payment_method'] as String,
    transactionId: json['transaction_id'] as String,
    paymentStatus: json['payment_status'] as String,
    isPendingPayment: json['is_pending_payment'] as String,
  );
}

Map<String, dynamic> _$PaymentStatusRequestEntityToJson(
        PaymentStatusRequestEntity instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'player_id': instance.playerId,
      'paid_amt': instance.paidAmount,
      'payment_method': instance.paymentMethod,
      'transaction_id': instance.transactionId,
      'payment_status': instance.paymentStatus,
      'is_pending_payment': instance.isPendingPayment,
    };
