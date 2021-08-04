class RegisterUserRequest {
  final String firstName;
  final String lastName;
  final String email;
  final String mobile;
  final String dob;
  final String password;
  final String lang;
  final String countryCode;

  RegisterUserRequest(
      {this.firstName,
      this.lastName,
      this.email,
      this.mobile,
      this.dob,
      this.password,
      this.lang,
      this.countryCode});
}
