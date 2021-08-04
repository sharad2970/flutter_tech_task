// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_buddy_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddBuddyResponseEntity _$AddBuddyResponseEntityFromJson(
    Map<String, dynamic> json) {
  return AddBuddyResponseEntity()
    ..data = json['data'] == null
        ? null
        : PlayerEntity.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AddBuddyResponseEntityToJson(
        AddBuddyResponseEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
