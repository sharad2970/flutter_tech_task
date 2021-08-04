// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_pending_payments_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailPendingPaymentsResponseEntity
    _$OrderDetailPendingPaymentsResponseEntityFromJson(
        Map<String, dynamic> json) {
  return OrderDetailPendingPaymentsResponseEntity()
    ..data = json['data'] == null
        ? null
        : BookingOrderPendingPaymentInfoEntity.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$OrderDetailPendingPaymentsResponseEntityToJson(
        OrderDetailPendingPaymentsResponseEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
