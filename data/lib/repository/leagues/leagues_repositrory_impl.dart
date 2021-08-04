import 'package:dartz/dartz.dart';
import 'package:data/network/rest/api_interceptor.dart';
import 'package:data/network/rest/utils/safe_api_call.dart';
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
import 'package:domain/repository/leagues/leagues_repository.dart';
import 'package:domain/repository/user/user_repository.dart';

class LeaguesRepositoryImpl extends LeaguesRepository {
  final LeaguesRemoteDS _remoteDS;
  final UserRepository _userRepository;
  final Dio _dio;

  LeaguesRepositoryImpl(this._remoteDS, this._userRepository, this._dio) {
    _dio.interceptors.add(ApiInterceptor(this._userRepository, _dio));
  }

  @override
  Future<Either<NetworkError, LeagueListInfo>> getLeagues(
      {int skip, int take}) async {
    final response = await safeApiCall(_remoteDS.getLeagues(skip: skip, take: take));
    return response.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }

  @override
  Future<Either<NetworkError, List<LeagueTeams>>> getLeagueTeams(
      {String leagueId}) async {
    final response =
        await safeApiCall(_remoteDS.getLeagueTeams(leagueId: leagueId));
    return response.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }

  @override
  Future<Either<NetworkError, String>> getRulesAndRegulations(
      {String leagueId, BookingTypeEnum bookingTypeEnum}) async {
    final response = await safeApiCall(_remoteDS.getRulesAndRegulations(
        leagueId: leagueId, bookingTypeEnum: bookingTypeEnum));
    return response.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }

  @override
  Future<Either<NetworkError, List<UpcomingFixtures>>> getUpcomingFixtures(
      {String leagueId}) async {
    final response = await safeApiCall(
        _remoteDS.getUpcomingFixturesResponse(leagueId: leagueId));
    return response.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }

  @override
  Future<Either<NetworkError, List<LeagueTable>>> getLeagueTable(
      {String leagueId}) async {
    final response =
        await safeApiCall(_remoteDS.leagueTableResponse(leagueId: leagueId));
    return response.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }

  @override
  Future<Either<NetworkError, CreateLeagueTeam>> createLeagueTeam(
      {CreateTeamRequest request}) async {
    final response =
        await safeApiCall(_remoteDS.createLeagueTeamResponse(request: request));
    return response.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }
}
