// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePasswordRequest _$CreatePasswordRequestFromJson(
    Map<String, dynamic> json) {
  return CreatePasswordRequest(
    firstName: json['first_name'] as String,
    lasstName: json['last_name'] as String,
    dob: json['date_of_birth'] as String,
    mobile: json['mobile'] as String,
    email: json['email'] as String,
    password: json['password'] as String,
    lang: json['lang'] as String,
  );
}

Map<String, dynamic> _$CreatePasswordRequestToJson(
        CreatePasswordRequest instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lasstName,
      'date_of_birth': instance.dob,
      'mobile': instance.mobile,
      'email': instance.email,
      'password': instance.password,
      'lang': instance.lang,
    };
