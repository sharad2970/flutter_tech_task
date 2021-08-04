// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_methods_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethodResponseEntity _$PaymentMethodResponseEntityFromJson(
    Map<String, dynamic> json) {
  return PaymentMethodResponseEntity(
    name: json['name'] as String,
    value: json['value'] as String,
  );
}

Map<String, dynamic> _$PaymentMethodResponseEntityToJson(
        PaymentMethodResponseEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };
