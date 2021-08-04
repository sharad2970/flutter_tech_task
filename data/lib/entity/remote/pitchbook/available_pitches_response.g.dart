// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_pitches_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailablePitchesResponse _$AvailablePitchesResponseFromJson(
    Map<String, dynamic> json) {
  return AvailablePitchesResponse(
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : AvailablePitchesEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AvailablePitchesResponseToJson(
        AvailablePitchesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
