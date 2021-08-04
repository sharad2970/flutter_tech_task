// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_info_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingListInfoEntity _$BookingListInfoEntityFromJson(
    Map<String, dynamic> json) {
  return BookingListInfoEntity(
    data: (json['orderDetails'] as List)
        ?.map((e) => e == null
            ? null
            : OrderInfoEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    count: json['count'] as int,
    skip: json['skip'] as int,
    take: json['take'] as int,
  );
}

Map<String, dynamic> _$BookingListInfoEntityToJson(
        BookingListInfoEntity instance) =>
    <String, dynamic>{
      'orderDetails': instance.data,
      'count': instance.count,
      'skip': instance.skip,
      'take': instance.take,
    };
