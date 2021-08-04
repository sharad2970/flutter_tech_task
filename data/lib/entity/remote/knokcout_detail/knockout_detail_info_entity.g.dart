// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'knockout_detail_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KnockoutDetailInfoEntity _$KnockoutDetailInfoEntityFromJson(
    Map<String, dynamic> json) {
  return KnockoutDetailInfoEntity(
    id: json['knockout_id'] as int,
    orderId: json['order_id'] as int,
    name: json['knockout_name'] as String,
    noOfTeams: json['no_of_teams'] as int,
    startDate: json['start_date'] as String,
    endDate: json['end_date'] as String,
    amount: json['amount'] as String,
    description: json['description'] as String,
    rules: json['rules'] as String,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
    isTeamPlayer: json['team_player'] as bool,
    paymentStatus: json['payment_status'] as String,
    isPlayerInvited: json['is_player_invited'] as bool,
    playerPaymentStatus: json['playerPayment'] as String,
    isCaption: json['captain'] as bool,
    paymentMethod: json['payment_method'] as String,
    isTeamLimitExceeded: json['isTeammaxout'] as bool,
    teamName: json['team_name'] as String,
  );
}

Map<String, dynamic> _$KnockoutDetailInfoEntityToJson(
        KnockoutDetailInfoEntity instance) =>
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
      'deleted_at': instance.deletedAt,
      'is_player_invited': instance.isPlayerInvited,
      'team_player': instance.isTeamPlayer,
      'payment_status': instance.paymentStatus,
      'playerPayment': instance.playerPaymentStatus,
      'captain': instance.isCaption,
      'payment_method': instance.paymentMethod,
      'isTeammaxout': instance.isTeamLimitExceeded,
      'team_name': instance.teamName,
    };
