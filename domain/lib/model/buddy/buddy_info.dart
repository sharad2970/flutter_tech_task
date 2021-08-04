import 'package:domain/model/buddy/buddy.dart';

class BuddyInfo {
  int id;
  int senderId;
  int receiverId;
  int status;
  Buddy buddy;

  BuddyInfo({this.id, this.senderId, this.receiverId, this.status, this.buddy});

  @override
  String toString() {
    return 'BuddyInfo{id: $id, senderId: $senderId, receiverId: $receiverId, status: $status, buddy: $buddy}';
  }
}
