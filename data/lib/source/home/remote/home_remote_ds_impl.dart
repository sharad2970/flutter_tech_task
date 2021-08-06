import 'package:data/entity/local/user_db_entity.dart';
import 'package:data/entity/remote/home/popular_movies_response_entity.dart';
import 'package:data/entity/remote/leagues/create_league_team_request_entity.dart';
import 'package:data/entity/remote/leagues/create_league_team_response.dart';
import 'package:data/entity/remote/leagues/league_list_request_entity.dart';
import 'package:data/entity/remote/leagues/league_list_response_entity.dart';
import 'package:data/entity/remote/leagues/league_table_request_entity.dart';
import 'package:data/entity/remote/leagues/league_table_response.dart';
import 'package:data/entity/remote/leagues/league_teams_request.dart';
import 'package:data/entity/remote/leagues/league_teams_response.dart';
import 'package:data/entity/remote/leagues/leagues_response.dart';
import 'package:data/entity/remote/leagues/player_id_request_entity.dart';
import 'package:data/entity/remote/leagues/rules_and_regulations_request.dart';
import 'package:data/entity/remote/leagues/rules_and_regulations_response.dart';
import 'package:data/entity/remote/leagues/upcoming_fixture_request_entity.dart';
import 'package:data/entity/remote/leagues/upcoming_fixtures_response.dart';
import 'package:data/network/rest/api_service.dart';
import 'package:data/source/user/user_data_sources.dart';
import 'package:domain/constants/api_constant.dart';
import 'package:domain/constants/enum/booking_type_enum.dart';
import 'package:domain/model/leagues/create_team_league_request.dart';
import 'package:domain/model/user.dart';
import 'package:flutter/widgets.dart';
import 'package:retrofit/dio.dart';

import '../home_data_source.dart';

class HomeRemoteDSImpl extends HomeRemoteDS {
  final ApiService _apiService;
  final UserLocalDS _userLocalDS;

  HomeRemoteDSImpl(this._apiService, this._userLocalDS);

  @override
  Future<HttpResponse<PopularMoviesResponseEntity>> getPopularMovies({String type}) {
    if(type == ApiConstant.POPULAR){
      return _apiService.getPopularMovies();
    }else if(type == ApiConstant.TOP_RATED){
      return _apiService.getTopRatedMovies();
    }else if(type == ApiConstant.LATEST){
      return _apiService.getLatestMovies();
    }else{
      return _apiService.getUpcomingMovies();
    }
  }
}
