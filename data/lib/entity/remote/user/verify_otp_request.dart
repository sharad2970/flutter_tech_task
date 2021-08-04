import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_request.g.dart';

/// data class for verifyOtp
@JsonSerializable()
class VerifyOtpRequest {
  @JsonKey(name: "code")
  final String code;

  VerifyOtpRequest({
    this.code,
  });

  factory VerifyOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpRequestFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOtpRequestToJson(this);
}
