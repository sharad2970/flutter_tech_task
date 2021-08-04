// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderListResponseEntity _$OrderListResponseEntityFromJson(
    Map<String, dynamic> json) {
  return OrderListResponseEntity(
    data: json['data'] == null
        ? null
        : BookingListInfoEntity.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$OrderListResponseEntityToJson(
        OrderListResponseEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
