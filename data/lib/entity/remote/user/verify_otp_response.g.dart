// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpResponse _$VerifyOtpResponseFromJson(Map<String, dynamic> json) {
  return VerifyOtpResponse(
    json['data'] == null
        ? null
        : VerifyOtpEntity.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VerifyOtpResponseToJson(VerifyOtpResponse instance) =>
    <String, dynamic>{
      'data': instance.verifyOtpEntity,
    };
