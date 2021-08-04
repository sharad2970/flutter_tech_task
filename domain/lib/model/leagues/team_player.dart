class TeamPlayer {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String mobile;
  final String dob;
  final String avatar;
  final int isTncAgreed;
  final int status;
  final String lang;
  final String createdAt;
  final String updatedAt;
  final String countryCode;

  TeamPlayer(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.mobile,
      this.dob,
      this.avatar: '',
      this.isTncAgreed,
      this.status,
      this.lang,
      this.createdAt,
      this.updatedAt,
      this.countryCode});
}
