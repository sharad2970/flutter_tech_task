// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_methods_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethodsResponse _$PaymentMethodsResponseFromJson(
    Map<String, dynamic> json) {
  return PaymentMethodsResponse(
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : PaymentMethodResponseEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PaymentMethodsResponseToJson(
        PaymentMethodsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
