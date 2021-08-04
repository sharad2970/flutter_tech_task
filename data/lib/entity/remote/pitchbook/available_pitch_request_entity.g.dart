// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_pitch_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailablePitchRequestEntity _$AvailablePitchRequestEntityFromJson(
    Map<String, dynamic> json) {
  return AvailablePitchRequestEntity(
    date: json['date'] as String,
    startTime: json['start_time'] as String,
    endTime: json['end_time'] as String,
  );
}

Map<String, dynamic> _$AvailablePitchRequestEntityToJson(
        AvailablePitchRequestEntity instance) =>
    <String, dynamic>{
      'date': instance.date,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
    };
