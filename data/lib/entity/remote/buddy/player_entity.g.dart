// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerEntity _$PlayerEntityFromJson(Map<String, dynamic> json) {
  return PlayerEntity()
    ..id = json['id'] as int
    ..firstName = json['first_name'] as String
    ..lastName = json['last_name'] as String
    ..avatar = json['avatar'] as String
    ..isRequested = json['isRequested'] as bool
    ..requestedId = json['requestedId'] as String
    ..requestedDateTime = json['requestedDateTime'] as String;
}

Map<String, dynamic> _$PlayerEntityToJson(PlayerEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar': instance.avatar,
      'isRequested': instance.isRequested,
      'requestedId': instance.requestedId,
      'requestedDateTime': instance.requestedDateTime,
    };
