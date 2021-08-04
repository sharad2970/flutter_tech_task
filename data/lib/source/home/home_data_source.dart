import 'package:data/entity/remote/home/popular_movies_response_entity.dart';
import 'package:data/entity/remote/leagues/create_league_team_response.dart';
import 'package:data/entity/remote/leagues/league_list_response_entity.dart';
import 'package:data/entity/remote/leagues/league_table_response.dart';
import 'package:data/entity/remote/leagues/league_teams_response.dart';
import 'package:data/entity/remote/leagues/rules_and_regulations_response.dart';
import 'package:data/entity/remote/leagues/upcoming_fixtures_response.dart';
import 'package:domain/constants/enum/booking_type_enum.dart';
import 'package:domain/model/leagues/create_team_league_request.dart';
import 'package:flutter/widgets.dart';
import 'package:retrofit/retrofit.dart';

abstract class HomeRemoteDS {

  Future<HttpResponse<PopularMoviesResponseEntity>> getPopularMovies();
}
