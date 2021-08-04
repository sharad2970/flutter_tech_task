// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invite_buddies_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InviteBuddiesRequestEntity _$InviteBuddiesRequestEntityFromJson(
    Map<String, dynamic> json) {
  return InviteBuddiesRequestEntity(
    orderId: json['order_id'] as String,
    paymentMethod: json['payment_method'] as String,
    orderStatus: json['order_status'] as String,
    paymentStatus: json['payment_status'] as String,
    players: (json['players'] as List)
        ?.map((e) => e == null
            ? null
            : PlayerIdEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$InviteBuddiesRequestEntityToJson(
        InviteBuddiesRequestEntity instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'payment_method': instance.paymentMethod,
      'order_status': instance.orderStatus,
      'payment_status': instance.paymentStatus,
      'players': instance.players,
    };
