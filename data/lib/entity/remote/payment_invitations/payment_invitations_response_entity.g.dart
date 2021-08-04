// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_invitations_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentInvitationsResponseEntity _$PaymentInvitationsResponseEntityFromJson(
    Map<String, dynamic> json) {
  return PaymentInvitationsResponseEntity()
    ..data = (json['paymentInvitation'] as List)
        ?.map((e) => e == null
            ? null
            : PaymentInvitationsEntityData.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..count = json['count'] as int
    ..skip = json['skip'] as int
    ..take = json['take'] as int
    ..currency = json['currency'] as String;
}

Map<String, dynamic> _$PaymentInvitationsResponseEntityToJson(
        PaymentInvitationsResponseEntity instance) =>
    <String, dynamic>{
      'paymentInvitation': instance.data,
      'count': instance.count,
      'skip': instance.skip,
      'take': instance.take,
      'currency': instance.currency,
    };
