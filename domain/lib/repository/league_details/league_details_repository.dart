import 'package:dartz/dartz.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/leagues/league_details.dart';
import 'package:domain/model/leagues/leagues.dart';

abstract class LeagueDetailRepository {
  Future<Either<NetworkError, List<Leagues>>> getLeagueDetail(
      {String leagueId});
}
