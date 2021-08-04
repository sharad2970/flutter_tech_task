import 'package:dartz/dartz.dart';
import 'package:data/network/rest/api_interceptor.dart';
import 'package:data/network/rest/utils/safe_api_call.dart';
import 'package:data/source/league_detail/league_detail_data_source.dart';
import 'package:dio/dio.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/leagues/leagues.dart';
import 'package:domain/repository/league_details/league_details_repository.dart';
import 'package:domain/repository/user/user_repository.dart';

class LeagueDetailsRepositoryImpl extends LeagueDetailRepository {
  final LeagueDetailRemoteDS _remoteDS;
  final UserRepository _userRepository;
  final Dio _dio;

  LeagueDetailsRepositoryImpl(this._remoteDS, this._userRepository, this._dio) {
    _dio.interceptors.add(ApiInterceptor(this._userRepository, _dio));
  }

  @override
  Future<Either<NetworkError, List<Leagues>>> getLeagueDetail(
      {String leagueId}) async {
    final response =
        await safeApiCall(_remoteDS.getLeagueDetail(leagueId: leagueId));
    return response.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }
}
