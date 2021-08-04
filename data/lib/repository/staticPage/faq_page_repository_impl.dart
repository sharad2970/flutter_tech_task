import 'package:dartz/dartz.dart';
import 'package:data/network/rest/api_interceptor.dart';
import 'package:data/network/rest/utils/safe_api_call.dart';
import 'package:data/source/staticPage/faq_data_source.dart';
import 'package:dio/dio.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/staticPage/faq_page_info.dart';
import 'package:domain/repository/staticPage/faq_page_repository.dart';
import 'package:domain/repository/user/user_repository.dart';

class FaqPageRepositoryImpl extends FaqPageRepository {
  final FaqPageRemoteDS _remoteDS;
  final UserRepository _userRepository;
  final Dio _dio;

  FaqPageRepositoryImpl(this._remoteDS, this._userRepository, this._dio) {
    _dio.interceptors.add(ApiInterceptor(this._userRepository, _dio));
  }

  @override
  Future<Either<NetworkError, List<Faqs>>> getFaqPageInfo(
      String language) async {
    final responseEntity =
        await safeApiCall(_remoteDS.getFaqPageInfo(language));
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
