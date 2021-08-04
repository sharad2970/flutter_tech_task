// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pitch_booking_bottles_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PitchBookingBottlesListResponse _$PitchBookingBottlesListResponseFromJson(
    Map<String, dynamic> json) {
  return PitchBookingBottlesListResponse(
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : BookPitchBottleResponseEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PitchBookingBottlesListResponseToJson(
        PitchBookingBottlesListResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
