// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buddy_player_list_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuddyPlayerListInfoEntity _$BuddyPlayerListInfoEntityFromJson(
    Map<String, dynamic> json) {
  return BuddyPlayerListInfoEntity()
    ..data = (json['playerList'] as List)
        ?.map((e) =>
            e == null ? null : PlayerEntity.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..count = json['count'] as int
    ..skip = json['skip'] as int
    ..take = json['take'] as int;
}

Map<String, dynamic> _$BuddyPlayerListInfoEntityToJson(
        BuddyPlayerListInfoEntity instance) =>
    <String, dynamic>{
      'playerList': instance.data,
      'count': instance.count,
      'skip': instance.skip,
      'take': instance.take,
    };
