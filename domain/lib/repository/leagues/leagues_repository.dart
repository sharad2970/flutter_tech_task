import 'package:dartz/dartz.dart';
import 'package:domain/constants/enum/booking_type_enum.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/leagues/create_league_team.dart';
import 'package:domain/model/leagues/create_team_league_request.dart';
import 'package:domain/model/leagues/league_list_info.dart';
import 'package:domain/model/leagues/league_table.dart';
import 'package:domain/model/leagues/league_teams.dart';
import 'package:domain/model/leagues/leagues.dart';
import 'package:domain/model/leagues/upcoming_fixtures.dart';

abstract class LeaguesRepository {
  Future<Either<NetworkError, LeagueListInfo>> getLeagues({int skip, int take});

  Future<Either<NetworkError, List<LeagueTeams>>> getLeagueTeams(
      {String leagueId});

  Future<Either<NetworkError, String>> getRulesAndRegulations(
      {String leagueId, BookingTypeEnum bookingTypeEnum});

  Future<Either<NetworkError, List<UpcomingFixtures>>> getUpcomingFixtures(
      {String leagueId});

  Future<Either<NetworkError, List<LeagueTable>>> getLeagueTable(
      {String leagueId});

  Future<Either<NetworkError, CreateLeagueTeam>> createLeagueTeam(
      {CreateTeamRequest request});
}
