class Buddy {
  int id;
  String firstName;
  String lastName;
  String avatar;
  bool isRequested;
  String requestedId;
  bool isSelected;
  int playerId;
  int playerIds;
  String requestedDate;
  String playerFirstName;
  String playerLastName;
  String mobile;
  String playerAvatar;
  bool isTeamMember;

  Buddy({
    this.id,
    this.firstName,
    this.lastName,
    this.avatar,
    this.isRequested,
    this.requestedId,
    this.isSelected: false,
    this.playerId,
    this.playerIds,
    this.requestedDate,
    this.playerFirstName,
    this.playerLastName,
    this.mobile,
    this.playerAvatar,
    this.isTeamMember,
  });

  @override
  String toString() {
    return 'Buddy{id: $id, firstName: $firstName, lastName: $lastName, avatar: $avatar, isRequested: $isRequested, requestedId: $requestedId, isSelected: $isSelected, playerId : $playerId , requestedDate : $requestedDate}';
  }
}
