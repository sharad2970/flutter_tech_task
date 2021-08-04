// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpEntity _$VerifyOtpEntityFromJson(Map<String, dynamic> json) {
  return VerifyOtpEntity(
    requestedId: json['requested_id'] as String,
    role: json['role'] as String,
    code: json['code'] as String,
  );
}

Map<String, dynamic> _$VerifyOtpEntityToJson(VerifyOtpEntity instance) =>
    <String, dynamic>{
      'requested_id': instance.requestedId,
      'role': instance.role,
      'code': instance.code,
    };
