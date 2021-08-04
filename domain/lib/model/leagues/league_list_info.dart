import 'package:domain/model/leagues/leagues.dart';

class LeagueListInfo {
  int count;
  int skip;
  int take;
  List<Leagues> list;

  LeagueListInfo({
    this.count: 10,
    this.skip: 0,
    this.take: 10,
    this.list,
  });
}