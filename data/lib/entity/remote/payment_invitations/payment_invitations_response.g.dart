// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_invitations_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentInvitationsResponse _$PaymentInvitationsResponseFromJson(
    Map<String, dynamic> json) {
  return PaymentInvitationsResponse(
    data: json['data'] == null
        ? null
        : PaymentInvitationsResponseEntity.fromJson(
            json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PaymentInvitationsResponseToJson(
        PaymentInvitationsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
