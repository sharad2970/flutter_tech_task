import 'package:json_annotation/json_annotation.dart';

part 'change_password_request.g.dart';

@JsonSerializable()
class ChangePasswordRequest {
  @JsonKey(name: "current_password")
  final String currentPassword;
  @JsonKey(name: "new_password")
  final String newPassword;
  @JsonKey(name: "password_confirmation")
  final String passwordConfirmation;

  ChangePasswordRequest(
      {this.currentPassword, this.newPassword, this.passwordConfirmation});

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChangePasswordRequestToJson(this);
}
