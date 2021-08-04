// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'static_page_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StaticPageResponseEntity _$StaticPageResponseEntityFromJson(
    Map<String, dynamic> json) {
  return StaticPageResponseEntity()
    ..data = json['data'] == null
        ? null
        : StaticPageResponseInfoEntity.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$StaticPageResponseEntityToJson(
        StaticPageResponseEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
