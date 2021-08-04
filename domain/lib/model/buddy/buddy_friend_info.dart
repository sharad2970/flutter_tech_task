import 'package:domain/model/buddy/buddy.dart';

class BuddyFriendInfo {
  int count;
  int skip;
  int take;
  List<Buddy> list;

  BuddyFriendInfo({
    this.count: 10,
    this.skip: 0,
    this.take: 10,
    this.list,
  });
}
