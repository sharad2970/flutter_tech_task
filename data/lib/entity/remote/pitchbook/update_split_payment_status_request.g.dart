// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_split_payment_status_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateSplitPaymentRequest _$UpdateSplitPaymentRequestFromJson(
    Map<String, dynamic> json) {
  return UpdateSplitPaymentRequest(
    orderId: json['order_id'] as String,
    paymentMethod: json['payment_method'] as String,
  );
}

Map<String, dynamic> _$UpdateSplitPaymentRequestToJson(
        UpdateSplitPaymentRequest instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'payment_method': instance.paymentMethod,
    };
