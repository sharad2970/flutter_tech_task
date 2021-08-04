// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_details_payment_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailPaymentsResponseEntity _$OrderDetailPaymentsResponseEntityFromJson(
    Map<String, dynamic> json) {
  return OrderDetailPaymentsResponseEntity(
    data: json['data'] == null
        ? null
        : BookingPaymentDetailsInfoEntity.fromJson(
            json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$OrderDetailPaymentsResponseEntityToJson(
        OrderDetailPaymentsResponseEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
