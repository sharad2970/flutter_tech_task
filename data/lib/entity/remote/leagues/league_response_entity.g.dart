// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueResponseEntity _$LeagueResponseEntityFromJson(Map<String, dynamic> json) {
  return LeagueResponseEntity(
    json['league_name'] as String,
    json['league_id'] as int,
    json['team_id'] as int,
    json['team_player'] as bool,
    json['order_id'] as int,
    json['payment_status'] as String,
    json['payment_method'] as String,
    json['captain'] as bool,
    json['playerPayment'] as String,
    json['start_date'] as String,
    json['end_date'] as String,
  );
}

Map<String, dynamic> _$LeagueResponseEntityToJson(
        LeagueResponseEntity instance) =>
    <String, dynamic>{
      'league_name': instance.leagueName,
      'league_id': instance.leagueId,
      'team_id': instance.teamId,
      'team_player': instance.teamPlayer,
      'order_id': instance.orderId,
      'payment_status': instance.paymentStatus,
      'payment_method': instance.paymentMethod,
      'captain': instance.isCaptain,
      'playerPayment': instance.playerPayment,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
    };
