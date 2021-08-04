// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_details_payment_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingPaymentDetailsInfoEntity _$BookingPaymentDetailsInfoEntityFromJson(
    Map<String, dynamic> json) {
  return BookingPaymentDetailsInfoEntity()
    ..data = (json['player'] as List)
        ?.map((e) =>
            e == null ? null : PlayerEntity.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..order = json['order_data'] == null
        ? null
        : BookingDetailsPaymentOrderInfoEntity.fromJson(
            json['order_data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BookingPaymentDetailsInfoEntityToJson(
        BookingPaymentDetailsInfoEntity instance) =>
    <String, dynamic>{
      'player': instance.data,
      'order_data': instance.order,
    };
