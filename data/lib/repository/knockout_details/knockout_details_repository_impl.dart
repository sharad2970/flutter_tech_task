import 'package:dartz/dartz.dart';
import 'package:data/network/rest/api_interceptor.dart';
import 'package:data/network/rest/utils/safe_api_call.dart';
import 'package:data/source/knockout_detail/knockout_detail_data_source.dart';
import 'package:dio/dio.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/knockout/knockout_details.dart';
import 'package:domain/repository/knockout_details/knockout_details_repository.dart';
import 'package:domain/repository/user/user_repository.dart';

class KnockoutDetailsRepositoryImpl extends KnockoutDetailRepository {
  final KnockoutDetailRemoteDS _remoteDS;
  final UserRepository _userRepository;
  final Dio _dio;

  KnockoutDetailsRepositoryImpl(
      this._remoteDS, this._userRepository, this._dio) {
    _dio.interceptors.add(ApiInterceptor(this._userRepository, _dio));
  }

  @override
  Future<Either<NetworkError, List<KnockoutDetails>>> getKnockoutDetail(
      {String knockoutId}) async {
    final response =
        await safeApiCall(_remoteDS.getKnockoutDetail(knockoutId: knockoutId));
    return response.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }
}
