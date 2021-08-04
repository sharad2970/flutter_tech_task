// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_invitations_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentInvitationsRequest _$PaymentInvitationsRequestFromJson(
    Map<String, dynamic> json) {
  return PaymentInvitationsRequest(
    playerId: json['player_id'] as String,
    skip: json['skip'] as int,
    take: json['take'] as int,
  );
}

Map<String, dynamic> _$PaymentInvitationsRequestToJson(
        PaymentInvitationsRequest instance) =>
    <String, dynamic>{
      'player_id': instance.playerId,
      'skip': instance.skip,
      'take': instance.take,
    };
