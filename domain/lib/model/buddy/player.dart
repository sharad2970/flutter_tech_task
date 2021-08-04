class Player {
  int id;
  String firstName;
  String lastName;
  String avatar;
  bool isRequested;
  String requestedId;
  bool isSelected;
  String requestedDateTime;

  Player(
      {this.id,
      this.firstName,
      this.lastName,
      this.avatar,
      this.isRequested,
      this.requestedId,
      this.isSelected,
      this.requestedDateTime});
}
