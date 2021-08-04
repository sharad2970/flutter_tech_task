// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailsEntity _$OrderDetailsEntityFromJson(Map<String, dynamic> json) {
  return OrderDetailsEntity(
    id: json['id'] as int,
    playerId: json['player_id'] as int,
    totalAmt: json['total_amt'] as String,
    paidAmt: json['paid_amt'] as String,
    transactionId: json['transaction_id'],
    paymentMethod: json['payment_method'] as String,
    paymentStatus: json['payment_status'] as String,
    orderStatus: json['order_status'] as String,
    refundStatus: json['refund_status'] as int,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    currency: json['currency'] as String,
    isBookingSessionExpired: json['isBookingSessionExpired'] as bool,
  );
}

Map<String, dynamic> _$OrderDetailsEntityToJson(OrderDetailsEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'player_id': instance.playerId,
      'total_amt': instance.totalAmt,
      'paid_amt': instance.paidAmt,
      'transaction_id': instance.transactionId,
      'payment_method': instance.paymentMethod,
      'payment_status': instance.paymentStatus,
      'order_status': instance.orderStatus,
      'refund_status': instance.refundStatus,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'currency': instance.currency,
      'isBookingSessionExpired': instance.isBookingSessionExpired,
    };
