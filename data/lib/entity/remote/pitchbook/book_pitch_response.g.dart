// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_pitch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookPitchResponse _$BookPitchResponseFromJson(Map<String, dynamic> json) {
  return BookPitchResponse(
    data: json['data'] == null
        ? null
        : BookPitchesResponseEntity.fromJson(
            json['data'] as Map<String, dynamic>),
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$BookPitchResponseToJson(BookPitchResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };
