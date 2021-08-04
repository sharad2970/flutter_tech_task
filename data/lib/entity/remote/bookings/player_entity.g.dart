// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerEntity _$PlayerEntityFromJson(Map<String, dynamic> json) {
  return PlayerEntity()
    ..firstName = json['first_name'] as String
    ..lastName = json['last_name'] as String
    ..paidPlayerFirstName = json['paid_player_first_name'] as String
    ..paidPlayerLastName = json['paid_player_last_name'] as String
    ..playerId = json['player_id'] as int
    ..splitAmt = json['split_amount'] as String
    ..paymentStatus = json['payment_status'] as String
    ..paymentMethod = json['payment_method'] as String
    ..paidPlayerId = json['paid_player_id'] as int
    ..isSplit = json['is_split'] as int;
}

Map<String, dynamic> _$PlayerEntityToJson(PlayerEntity instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'paid_player_first_name': instance.paidPlayerFirstName,
      'paid_player_last_name': instance.paidPlayerLastName,
      'player_id': instance.playerId,
      'split_amount': instance.splitAmt,
      'payment_status': instance.paymentStatus,
      'payment_method': instance.paymentMethod,
      'paid_player_id': instance.paidPlayerId,
      'is_split': instance.isSplit,
    };
