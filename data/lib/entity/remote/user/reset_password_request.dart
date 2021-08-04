import 'package:json_annotation/json_annotation.dart';

part 'reset_password_request.g.dart';

/// data class to request to update password
@JsonSerializable()
class ResetPasswordRequest {
  @JsonKey(name: "requested_id")
  final String requestedId;
  @JsonKey(name: "password")
  final String password;
  @JsonKey(name: "password_confirmation")
  final String passwordConfirmation;

  ResetPasswordRequest(
      {this.requestedId, this.password, this.passwordConfirmation});

  factory ResetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ResetPasswordRequestToJson(this);
}
