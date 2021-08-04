// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_player_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamPlayerResponseEntity _$TeamPlayerResponseEntityFromJson(
    Map<String, dynamic> json) {
  return TeamPlayerResponseEntity(
    id: json['id'] as int,
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    email: json['email'] as String,
    mobile: json['mobile'] as String,
    dob: json['date_of_birth'] as String,
    lang: json['lang'] as String,
    avatar: json['avatar'],
    isTnCAgreed: json['is_tnc_agreed'] as int,
    status: json['status'] as int,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    countryCode: json['country_code'] as String,
  );
}

Map<String, dynamic> _$TeamPlayerResponseEntityToJson(
        TeamPlayerResponseEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'mobile': instance.mobile,
      'date_of_birth': instance.dob,
      'lang': instance.lang,
      'avatar': instance.avatar,
      'is_tnc_agreed': instance.isTnCAgreed,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'country_code': instance.countryCode,
    };
