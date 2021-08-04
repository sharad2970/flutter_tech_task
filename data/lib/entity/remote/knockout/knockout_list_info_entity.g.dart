// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'knockout_list_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KnockoutListInfoEntity _$KnockoutListInfoEntityFromJson(
    Map<String, dynamic> json) {
  return KnockoutListInfoEntity()
    ..data = (json['knockoutList'] as List)
        ?.map((e) => e == null
            ? null
            : KnockoutPlayerEntity.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..count = json['count'] as int
    ..skip = json['skip'] as int
    ..take = json['take'] as int;
}

Map<String, dynamic> _$KnockoutListInfoEntityToJson(
        KnockoutListInfoEntity instance) =>
    <String, dynamic>{
      'knockoutList': instance.data,
      'count': instance.count,
      'skip': instance.skip,
      'take': instance.take,
    };
