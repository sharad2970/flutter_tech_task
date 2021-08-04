// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_pitch_booking_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePitchBookingResponse _$UpdatePitchBookingResponseFromJson(
    Map<String, dynamic> json) {
  return UpdatePitchBookingResponse(
    json['message'] as String,
    json['data'] == null
        ? null
        : UpdatePitchResponseEntity.fromJson(
            json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UpdatePitchBookingResponseToJson(
        UpdatePitchBookingResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.updatePitchErrorResponse,
    };
