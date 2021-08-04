// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buddy_player_list_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuddyPlayerListResponseEntity _$BuddyPlayerListResponseEntityFromJson(
    Map<String, dynamic> json) {
  return BuddyPlayerListResponseEntity()
    ..data = json['data'] == null
        ? null
        : BuddyPlayerListInfoEntity.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BuddyPlayerListResponseEntityToJson(
        BuddyPlayerListResponseEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
