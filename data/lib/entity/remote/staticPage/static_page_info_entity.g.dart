// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'static_page_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StaticPageResponseInfoEntity _$StaticPageResponseInfoEntityFromJson(
    Map<String, dynamic> json) {
  return StaticPageResponseInfoEntity(
    keyName: json['key_name'] as String,
    title: json['title'] as String,
    content: json['content'] as String,
    slug: json['slug'] as String,
    address: json['address'] as String,
    zipCode: json['zip_code'] as String,
    countryCode: json['country_code'] as String,
    mobileNumber: json['mobile_number'] as String,
    latitude: json['latitude'] as String,
    longitude: json['longitude'] as String,
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$StaticPageResponseInfoEntityToJson(
        StaticPageResponseInfoEntity instance) =>
    <String, dynamic>{
      'key_name': instance.keyName,
      'title': instance.title,
      'content': instance.content,
      'slug': instance.slug,
      'address': instance.address,
      'country_code': instance.countryCode,
      'mobile_number': instance.mobileNumber,
      'zip_code': instance.zipCode,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'email': instance.email,
    };
