// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPasswordRequest _$ResetPasswordRequestFromJson(Map<String, dynamic> json) {
  return ResetPasswordRequest(
    requestedId: json['requested_id'] as String,
    password: json['password'] as String,
    passwordConfirmation: json['password_confirmation'] as String,
  );
}

Map<String, dynamic> _$ResetPasswordRequestToJson(
        ResetPasswordRequest instance) =>
    <String, dynamic>{
      'requested_id': instance.requestedId,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
    };
