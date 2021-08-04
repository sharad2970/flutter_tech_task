import 'package:dartz/dartz.dart';
import 'package:data/network/rest/api_interceptor.dart';
import 'package:data/network/rest/utils/safe_api_call.dart';
import 'package:data/source/contact_us/contact_us_sources.dart';
import 'package:dio/dio.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/repository/contact_us/contact_us_repository.dart';
import 'package:domain/repository/user/user_repository.dart';


class ContactUsRepositoryImpl extends ContactUsRepository {
  final ContactUsSources _remoteDS;
  final UserRepository _userRepository;
  final Dio _dio;

  ContactUsRepositoryImpl(this._remoteDS, this._userRepository, this._dio) {
    _dio.interceptors.add(ApiInterceptor(this._userRepository, _dio));
  }

  @override
  Future<Either<NetworkError,String>> contactUsInfo({
    String category,
    String query}) async {
    final contactResponse = await safeApiCall(
        _remoteDS.contactUsApiCall(
          category: category,
          query: query
        ));
     return contactResponse.fold(
            (l) => Left(l), (r) => Right(r.data.transform()));
  }


}