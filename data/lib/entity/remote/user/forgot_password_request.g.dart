// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgotPasswordRequest _$ForgotPasswordRequestFromJson(
    Map<String, dynamic> json) {
  return ForgotPasswordRequest(
    email: json['input'] as String,
    countryCode: json['country_code'] as String,
  );
}

Map<String, dynamic> _$ForgotPasswordRequestToJson(
        ForgotPasswordRequest instance) =>
    <String, dynamic>{
      'input': instance.email,
      'country_code': instance.countryCode,
    };
