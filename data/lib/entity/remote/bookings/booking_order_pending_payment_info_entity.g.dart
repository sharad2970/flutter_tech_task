// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_order_pending_payment_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingOrderPendingPaymentInfoEntity
    _$BookingOrderPendingPaymentInfoEntityFromJson(Map<String, dynamic> json) {
  return BookingOrderPendingPaymentInfoEntity()
    ..pendingAmount = (json['pendingAmount'] as num)?.toDouble()
    ..data = (json['player'] as List)
        ?.map((e) =>
            e == null ? null : PlayerEntity.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$BookingOrderPendingPaymentInfoEntityToJson(
        BookingOrderPendingPaymentInfoEntity instance) =>
    <String, dynamic>{
      'pendingAmount': instance.pendingAmount,
      'player': instance.data,
    };
