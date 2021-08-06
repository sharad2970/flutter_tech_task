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
import 'package:domain/model/popular_movies.dart';

abstract class HomeRepository {
  Future<Either<NetworkError, List<PopularMovies>>> getPopularMovies({String type});
}
