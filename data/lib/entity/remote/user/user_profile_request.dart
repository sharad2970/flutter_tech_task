import 'package:json_annotation/json_annotation.dart';

part 'user_profile_request.g.dart';

@JsonSerializable()
class UserProfileRequest {
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
  @JsonKey(name: "country_code")
  final String countryCode;

  UserProfileRequest({
    this.firstName,
    this.lastName,
    this.dob,
    this.email,
    this.mobile,
    this.countryCode,
  });

  factory UserProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$UserProfileRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileRequestToJson(this);
}
