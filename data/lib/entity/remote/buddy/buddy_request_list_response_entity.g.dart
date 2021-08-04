// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buddy_request_list_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuddyRequestListResponseEntity _$BuddyRequestListResponseEntityFromJson(
    Map<String, dynamic> json) {
  return BuddyRequestListResponseEntity()
    ..data = json['data'] == null
        ? null
        : BuddyRequestListInfoEntity.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BuddyRequestListResponseEntityToJson(
        BuddyRequestListResponseEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
