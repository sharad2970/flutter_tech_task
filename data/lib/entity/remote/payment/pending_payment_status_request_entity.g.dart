// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pending_payment_status_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PendingPaymentStatusRequestEntity _$PendingPaymentStatusRequestEntityFromJson(
    Map<String, dynamic> json) {
  return PendingPaymentStatusRequestEntity(
    orderId: json['order_id'] as String,
    playerId: json['player_id'] as String,
    paidAmount: json['paid_amt'] as String,
    paymentMethod: json['payment_method'] as String,
    transactionId: json['transaction_id'] as String,
    paymentStatus: json['payment_status'] as String,
    paidForIds: (json['paid_for_id'] as List)?.map((e) => e as int)?.toList(),
  );
}

Map<String, dynamic> _$PendingPaymentStatusRequestEntityToJson(
        PendingPaymentStatusRequestEntity instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'player_id': instance.playerId,
      'paid_amt': instance.paidAmount,
      'payment_method': instance.paymentMethod,
      'transaction_id': instance.transactionId,
      'payment_status': instance.paymentStatus,
      'paid_for_id': instance.paidForIds,
    };
