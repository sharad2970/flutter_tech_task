// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pitch_booking_bottles_response.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookPitchBottleResponseEntity _$BookPitchBottleResponseEntityFromJson(
    Map<String, dynamic> json) {
  return BookPitchBottleResponseEntity(
    id: json['id'] as int,
    bottleCount: json['bottle_count'] as int,
    amount: json['amount'] as String,
  );
}

Map<String, dynamic> _$BookPitchBottleResponseEntityToJson(
        BookPitchBottleResponseEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bottle_count': instance.bottleCount,
      'amount': instance.amount,
    };
