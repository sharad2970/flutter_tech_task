import 'package:domain/model/knockout/knockout.dart';

class KnockoutListInfo {
  int count;
  int skip;
  int take;
  List<Knockout> list;

  KnockoutListInfo({
    this.count: 10,
    this.skip: 0,
    this.take: 10,
    this.list,
  });
}