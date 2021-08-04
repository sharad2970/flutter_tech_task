// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_fixtures_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpcomingResponseEntity _$UpcomingResponseEntityFromJson(
    Map<String, dynamic> json) {
  return UpcomingResponseEntity(
    bookingId: json['id'] as int,
    firstTeam: json['firstTeam'] as String,
    secondTeam: json['secondTeam'] as String,
    bookingDate: json['date'] as String,
    startTime: json['from_time'] as String,
    endTime: json['to_time'] as String,
    pitchNumber: json['pitch_no'] as int,
  );
}

Map<String, dynamic> _$UpcomingResponseEntityToJson(
        UpcomingResponseEntity instance) =>
    <String, dynamic>{
      'id': instance.bookingId,
      'firstTeam': instance.firstTeam,
      'secondTeam': instance.secondTeam,
      'date': instance.bookingDate,
      'from_time': instance.startTime,
      'to_time': instance.endTime,
      'pitch_no': instance.pitchNumber,
    };
