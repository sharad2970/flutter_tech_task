import 'package:json_annotation/json_annotation.dart';

part 'create_password_request.g.dart';

/// data class for login
@JsonSerializable()
class CreatePasswordRequest {
  @JsonKey(name: "first_name")
  final String firstName;
  @JsonKey(name: "last_name")
  final String lasstName;
  @JsonKey(name: "date_of_birth")
  final String dob;
  @JsonKey(name: "mobile")
  final String mobile;
  @JsonKey(name: "email")
  final String email;
  @JsonKey(name: "password")
  final String password;
  @JsonKey(name: "lang")
  final String lang;

  CreatePasswordRequest(
      {this.firstName,
      this.lasstName,
      this.dob,
      this.mobile,
      this.email,
      this.password,
      this.lang});

  factory CreatePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreatePasswordRequestToJson(this);
}
