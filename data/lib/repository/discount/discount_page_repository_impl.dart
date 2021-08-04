import 'package:dartz/dartz.dart';
import 'package:data/network/rest/api_interceptor.dart';
import 'package:data/network/rest/utils/safe_api_call.dart';
import 'package:data/source/discount/discount_data_source.dart';
import 'package:dio/dio.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/discount/discount_info.dart';
import 'package:domain/repository/discount/discount_repository.dart';
import 'package:domain/repository/user/user_repository.dart';

class DiscountPageRepositoryImpl extends DiscountRepository {
  final DiscountPageRemoteDS _remoteDS;
  final UserRepository _userRepository;
  final Dio _dio;

  DiscountPageRepositoryImpl(this._remoteDS, this._userRepository, this._dio) {
    _dio.interceptors.add(ApiInterceptor(this._userRepository, _dio));
  }

  @override
  Future<Either<NetworkError, DiscountInfo>> getDiscounts(String lang) async {
    final responseEntity =
        await safeApiCall(_remoteDS.getDiscountInfoList(lang));
    return responseEntity.fold(
      (l) => Left(l),
      (r) {
        return Right(
          r.data.transform(),
        );
      },
    );
  }
}
