import 'package:dartz/dartz.dart';
import 'package:data/network/rest/api_interceptor.dart';
import 'package:data/network/rest/utils/safe_api_call.dart';
import 'package:data/source/payment_invitations/payment_invitations_data_source.dart';
import 'package:dio/dio.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/payment_invitations/payment_invitations.dart';
import 'package:domain/repository/payment_invitations/payment_invitations_repository.dart';
import 'package:domain/repository/user/user_repository.dart';

class PaymentInvitationsRepositoryImpl extends PaymentInvitationsRepository {
  final PaymentInvitationsRemoteDS _remoteDS;
  final UserRepository _userRepository;
  final Dio _dio;

  PaymentInvitationsRepositoryImpl(
      this._remoteDS, this._userRepository, this._dio) {
    _dio.interceptors.add(ApiInterceptor(this._userRepository, _dio));
  }

  @override
  Future<Either<NetworkError, PaymentInvitations>> getPaymentInvitationList(
      {String search, int skip, int take}) async {
    final response = await safeApiCall(_remoteDS.getPaymentInvitationList(
        search: search, skip: skip, take: take));
    return response.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }
}
