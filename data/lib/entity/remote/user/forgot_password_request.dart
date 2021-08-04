import 'package:json_annotation/json_annotation.dart';

part 'forgot_password_request.g.dart';

/// data class to request to update password
@JsonSerializable()
class ForgotPasswordRequest {
  @JsonKey(name: "input")
  final String email;
  @JsonKey(name: "country_code")
  final String countryCode;

  ForgotPasswordRequest({this.email, this.countryCode});

  factory ForgotPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ForgotPasswordRequestToJson(this);
}
