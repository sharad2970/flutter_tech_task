import 'package:json_annotation/json_annotation.dart';

part 'registration_request.g.dart';

@JsonSerializable()
class RegistrationRequest {
  @JsonKey(name: "first_name")
  final String firstName;
  @JsonKey(name: "last_name")
  final String lastName;
  @JsonKey(name: "date_of_birth")
  final String dob;
  @JsonKey(name: "email")
  final String email;
  @JsonKey(name: "mobile")
  final String mobile;
  @JsonKey(name: "password")
  final String password;
  @JsonKey(name: "country_code")
  final String countryCode;

  final String lang;

  RegistrationRequest(
      {this.firstName,
      this.lastName,
      this.dob,
      this.email,
      this.mobile,
      this.password,
      this.countryCode,
      this.lang});

  factory RegistrationRequest.fromJson(Map<String, dynamic> json) =>
      _$RegistrationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RegistrationRequestToJson(this);
}
