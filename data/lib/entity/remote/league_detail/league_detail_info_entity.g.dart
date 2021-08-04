// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_detail_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueDetailInfoEntity _$LeagueDetailInfoEntityFromJson(
    Map<String, dynamic> json) {
  return LeagueDetailInfoEntity(
    leagueName: json['league_name'] as String,
    leagueId: json['league_id'] as int,
    teamId: json['team_id'] as int,
    teamPlayer: json['team_player'] as bool,
    orderId: json['order_id'] as int,
    paymentStatus: json['payment_status'] as String,
    paymentMethod: json['payment_method'] as String,
    isCaptain: json['captain'] as bool,
    playerPayment: json['playerPayment'] as String,
    startDate: json['start_date'] as String,
    endDate: json['end_date'] as String,
  );
}

Map<String, dynamic> _$LeagueDetailInfoEntityToJson(
        LeagueDetailInfoEntity instance) =>
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
