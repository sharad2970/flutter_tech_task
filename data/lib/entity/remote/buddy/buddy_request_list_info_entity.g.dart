// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buddy_request_list_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuddyRequestListInfoEntity _$BuddyRequestListInfoEntityFromJson(
    Map<String, dynamic> json) {
  return BuddyRequestListInfoEntity()
    ..data = (json['buddyList'] as List)
        ?.map((e) => e == null
            ? null
            : BuddyInfoEntity.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..count = json['count'] as int
    ..skip = json['skip'] as int
    ..take = json['take'] as int;
}

Map<String, dynamic> _$BuddyRequestListInfoEntityToJson(
        BuddyRequestListInfoEntity instance) =>
    <String, dynamic>{
      'buddyList': instance.data,
      'count': instance.count,
      'skip': instance.skip,
      'take': instance.take,
    };
