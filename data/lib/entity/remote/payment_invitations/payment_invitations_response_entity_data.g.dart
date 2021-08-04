// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_invitations_response_entity_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentInvitationsEntityData _$PaymentInvitationsEntityDataFromJson(
    Map<String, dynamic> json) {
  return PaymentInvitationsEntityData()
    ..playerId = json['player_id'] as int
    ..firstName = json['first_name'] as String
    ..lastName = json['last_name'] as String
    ..orderId = json['order_ids'] as int
    ..date = json['date'] as String
    ..startTime = json['start_time'] as String
    ..endTime = json['end_time'] as String
    ..paymentStatus = json['payment_status'] as String
    ..splitAmount = json['split_amount'] as String
    ..subOrderId = json['sub_order_id'] as int
    ..pitchId = json['pitch_id'] as int
    ..isSplit = json['is_split'] as int
    ..paidAmount = json['paid_amount'] as String
    ..knockoutId = json['knockout_id'] as int
    ..leagueId = json['league_id'] as int
    ..orderType = json['order_type'] as String
    ..leagueStartDate = json['league_start_date'] as String
    ..leagueEndDate = json['league_end_date'] as String
    ..knockoutStartDate = json['knockout_start_date'] as String
    ..knockoutEndDate = json['knockout_end_date'] as String;
}

Map<String, dynamic> _$PaymentInvitationsEntityDataToJson(
        PaymentInvitationsEntityData instance) =>
    <String, dynamic>{
      'player_id': instance.playerId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'order_ids': instance.orderId,
      'date': instance.date,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'payment_status': instance.paymentStatus,
      'split_amount': instance.splitAmount,
      'sub_order_id': instance.subOrderId,
      'pitch_id': instance.pitchId,
      'is_split': instance.isSplit,
      'paid_amount': instance.paidAmount,
      'knockout_id': instance.knockoutId,
      'league_id': instance.leagueId,
      'order_type': instance.orderType,
      'league_start_date': instance.leagueStartDate,
      'league_end_date': instance.leagueEndDate,
      'knockout_start_date': instance.knockoutStartDate,
      'knockout_end_date': instance.knockoutEndDate,
    };
