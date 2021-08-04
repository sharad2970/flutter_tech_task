import 'package:domain/model/buddy/buddy_info.dart';

class BuddyRequestInfo {
  int count;
  int skip;
  int take;
  List<BuddyInfo> list;

  BuddyRequestInfo({
    this.count: 10,
    this.skip: 0,
    this.take: 100,
    this.list,
  });
}
