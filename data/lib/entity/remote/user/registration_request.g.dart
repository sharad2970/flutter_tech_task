// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegistrationRequest _$RegistrationRequestFromJson(Map<String, dynamic> json) {
  return RegistrationRequest(
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    dob: json['date_of_birth'] as String,
    email: json['email'] as String,
    mobile: json['mobile'] as String,
    password: json['password'] as String,
    countryCode: json['country_code'] as String,
    lang: json['lang'] as String,
  );
}

Map<String, dynamic> _$RegistrationRequestToJson(
        RegistrationRequest instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'date_of_birth': instance.dob,
      'email': instance.email,
      'mobile': instance.mobile,
      'password': instance.password,
      'country_code': instance.countryCode,
      'lang': instance.lang,
    };
