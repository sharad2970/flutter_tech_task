import 'package:domain/constants/app_constant.dart';

class LeagueHomeEnum {
  final String _value;

  const LeagueHomeEnum._(this._value);

  @override
  String toString() {
    return _value.toString();
  }

  static const LeagueHomeEnum TEAMS = LeagueHomeEnum._(Constant.TEAMS);
  static const LeagueHomeEnum LEAGUE_TABLE = LeagueHomeEnum._(Constant.LEAGUE_TABLE);
  static const LeagueHomeEnum UPCOMING_FIXTURES = LeagueHomeEnum._(Constant.UPCOMING_FIXTURES);
  static const LeagueHomeEnum CREATE_TEAM = LeagueHomeEnum._(Constant.CREATE_TEAM);
  static const LeagueHomeEnum PAYMENT = LeagueHomeEnum._(Constant.PAYMENT);
}
