import 'package:dartz/dartz.dart';
import 'package:data/network/rest/api_interceptor.dart';
import 'package:data/network/rest/utils/safe_api_call.dart';
import 'package:data/source/home/home_data_source.dart';
import 'package:data/source/leagues/leagues_data_source.dart';
import 'package:dio/dio.dart';
import 'package:domain/constants/enum/booking_type_enum.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/leagues/create_league_team.dart';
import 'package:domain/model/leagues/create_team_league_request.dart';
import 'package:domain/model/leagues/league_table.dart';
import 'package:domain/model/leagues/league_teams.dart';
import 'package:domain/model/leagues/league_list_info.dart';
import 'package:domain/model/leagues/upcoming_fixtures.dart';
import 'package:domain/model/popular_movies.dart';
import 'package:domain/repository/leagues/leagues_repository.dart';
import 'package:domain/repository/user/user_repository.dart';
import 'package:domain/repository/home/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeRemoteDS _remoteDS;
  final UserRepository _userRepository;
  final Dio _dio;

  HomeRepositoryImpl(this._remoteDS, this._userRepository, this._dio) {
    _dio.interceptors.add(ApiInterceptor(this._userRepository, _dio));
  }

  @override
  Future<Either<NetworkError, List<PopularMovies>>> getPopularMovies() async {
    final response = await safeApiCall(_remoteDS.getPopularMovies());
    return response.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }
}
