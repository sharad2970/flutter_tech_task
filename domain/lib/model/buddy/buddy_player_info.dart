import 'package:domain/model/buddy/player.dart';

class BuddyPlayerInfo {
  int count;
  int skip;
  int take;
  List<Player> list;

  BuddyPlayerInfo({
    this.count: 10,
    this.skip: 0,
    this.take: 10,
    this.list,
  });
}
