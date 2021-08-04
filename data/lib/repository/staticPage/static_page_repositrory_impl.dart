import 'package:dartz/dartz.dart';
import 'package:data/network/rest/api_interceptor.dart';
import 'package:data/network/rest/utils/safe_api_call.dart';
import 'package:data/source/staticPage/static_data_source.dart';
import 'package:dio/dio.dart';
import 'package:domain/constants/enum/static_page_enum.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/staticPage/static_page_info.dart';
import 'package:domain/repository/staticPage/static_page_repository.dart';
import 'package:domain/repository/user/user_repository.dart';

class StaticPageRepositoryImpl extends StaticPageRepository {
  final StaticPageRemoteDS _remoteDS;

  final UserRepository _userRepository;
  final Dio _dio;

  StaticPageRepositoryImpl(this._remoteDS, this._userRepository, this._dio) {
    _dio.interceptors.add(ApiInterceptor(this._userRepository, _dio));
  }

  @override
  Future<Either<NetworkError, StaticPageInfo>> getStaticPageInfo(
      StaticPageEnum staticPageEnum) async {
    final responseEntity = await safeApiCall(
        _remoteDS.getStaticPageInfo(staticPageEnum.toString()));
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
