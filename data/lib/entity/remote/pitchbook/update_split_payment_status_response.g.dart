// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_split_payment_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateSplitPaymentStatusResponse _$UpdateSplitPaymentStatusResponseFromJson(
    Map<String, dynamic> json) {
  return UpdateSplitPaymentStatusResponse(
    data: json['data'] == null
        ? null
        : UpdatePaymentStatusResponseEntity.fromJson(
            json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UpdateSplitPaymentStatusResponseToJson(
        UpdateSplitPaymentStatusResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
