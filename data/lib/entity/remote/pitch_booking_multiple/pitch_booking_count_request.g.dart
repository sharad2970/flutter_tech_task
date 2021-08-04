// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pitch_booking_count_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PitchBookingCountRequest _$PitchBookingCountRequestFromJson(
    Map<String, dynamic> json) {
  return PitchBookingCountRequest(
    playerId: json['player_id'] as String,
    pitchCount: json['pitch_count'] as String,
  );
}

Map<String, dynamic> _$PitchBookingCountRequestToJson(
        PitchBookingCountRequest instance) =>
    <String, dynamic>{
      'player_id': instance.playerId,
      'pitch_count': instance.pitchCount,
    };
