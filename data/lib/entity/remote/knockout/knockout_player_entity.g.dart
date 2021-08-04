// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'knockout_player_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KnockoutPlayerEntity _$KnockoutPlayerEntityFromJson(Map<String, dynamic> json) {
  return KnockoutPlayerEntity(
    json['knockout_id'] as int,
    json['order_id'] as int,
    json['knockout_name'] as String,
    json['no_of_teams'] as int,
    json['start_date'] as String,
    json['end_date'] as String,
    json['amount'] as String,
    json['description'] as String,
    json['rules'] as String,
    json['created_at'] as String,
    json['updated_at'] as String,
    json['is_player_invited'] as bool,
    json['team_player'] as bool,
    json['payment_status'] as String,
    json['playerPayment'] as String,
    json['captain'] as bool,
    json['payment_method'] as String,
    json['isTeammaxout'] as bool,
  );
}

Map<String, dynamic> _$KnockoutPlayerEntityToJson(
        KnockoutPlayerEntity instance) =>
    <String, dynamic>{
      'knockout_id': instance.id,
      'order_id': instance.orderId,
      'knockout_name': instance.name,
      'no_of_teams': instance.noOfTeams,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'amount': instance.amount,
      'description': instance.description,
      'rules': instance.rules,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'is_player_invited': instance.isPlayerInvited,
      'team_player': instance.isTeamPlayer,
      'payment_status': instance.paymentStatus,
      'playerPayment': instance.playerPaymentStatus,
      'captain': instance.isCaption,
      'payment_method': instance.paymentMethod,
      'isTeammaxout': instance.isTeamLimitExceeded,
    };
