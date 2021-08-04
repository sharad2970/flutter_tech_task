class AcceptedBuddy {
  int id;
  int senderId;
  int receiverId;
  String updatedDate;

  AcceptedBuddy({this.id, this.senderId, this.receiverId, this.updatedDate});

  @override
  String toString() {
    return 'BuddyAccepted{id: $id, senderId: $senderId, receiverId: $receiverId, updateDate : $updatedDate}';
  }
}
