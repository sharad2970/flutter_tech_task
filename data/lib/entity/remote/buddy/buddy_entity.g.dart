// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buddy_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuddyEntity _$BuddyEntityFromJson(Map<String, dynamic> json) {
  return BuddyEntity()
    ..id = json['id'] as int
    ..firstName = json['first_name'] as String
    ..lastName = json['last_name'] as String
    ..avatar = json['avatar'] as String
    ..isRequested = json['isRequested'] as bool
    ..requestedId = json['requestedId'] as String;
}

Map<String, dynamic> _$BuddyEntityToJson(BuddyEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar': instance.avatar,
      'isRequested': instance.isRequested,
      'requestedId': instance.requestedId,
    };
