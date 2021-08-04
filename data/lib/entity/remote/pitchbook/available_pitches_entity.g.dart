// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_pitches_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailablePitchesEntity _$AvailablePitchesEntityFromJson(
    Map<String, dynamic> json) {
  return AvailablePitchesEntity(
    id: json['id'] as int,
    number: json['number'] as String,
    image: json['image'] as String,
    address: json['address'] as String,
    price: json['price'] as String,
    duration: json['duration'] as int,
    startTime: json['start_time'] as String,
    endTime: json['end_time'] as String,
    isDefaultPrice: json['is_default_price'] as int,
    isDefaultTime: json['is_default_time'] as int,
    status: json['status'] as int,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'],
    available: json['available'] as bool,
  );
}

Map<String, dynamic> _$AvailablePitchesEntityToJson(
        AvailablePitchesEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'image': instance.image,
      'address': instance.address,
      'price': instance.price,
      'duration': instance.duration,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'is_default_price': instance.isDefaultPrice,
      'is_default_time': instance.isDefaultTime,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'available': instance.available,
    };
