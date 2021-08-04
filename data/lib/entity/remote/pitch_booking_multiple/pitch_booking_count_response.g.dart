// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pitch_booking_count_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PitchBookingCountResponse _$PitchBookingCountResponseFromJson(
    Map<String, dynamic> json) {
  return PitchBookingCountResponse(
    json['data'] == null
        ? null
        : PitchBookingCountResponseEntity.fromJson(
            json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PitchBookingCountResponseToJson(
        PitchBookingCountResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
