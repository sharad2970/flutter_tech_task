import 'package:dartz/dartz.dart';
import 'package:data/network/rest/api_interceptor.dart';
import 'package:data/network/rest/utils/safe_api_call.dart';
import 'package:data/source/order/order_data_source.dart';
import 'package:dio/dio.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/booking_details/booking_details_request_info.dart';
import 'package:domain/model/booking_details/booking_payment_details.dart';
import 'package:domain/model/booking_details/booking_pending_amount.dart';
import 'package:domain/model/bookings/bookings_request_info.dart';
import 'package:domain/repository/orders/order_repository.dart';
import 'package:domain/repository/user/user_repository.dart';

class OrderRepositoryImpl extends OrderRepository {
  final OrderRemoteDS _remoteDS;
  final UserRepository _userRepository;
  final Dio _dio;

  OrderRepositoryImpl(this._remoteDS, this._userRepository, this._dio) {
    _dio.interceptors.add(ApiInterceptor(this._userRepository, _dio));
  }

  @override
  Future<Either<NetworkError, BookingsRequestInfo>> getOrderRequestList(
      {String status, int skip, int take}) async {
    final responseEntity = await safeApiCall(
        _remoteDS.getOrderList(status: status, skip: skip, take: take));
    return responseEntity.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }

  ///fetching the booking order details data
  @override
  Future<Either<NetworkError, BookingDetailsRequestInfo>> getOrderDetails(
      {String orderId, String pitchId, int subOrderId}) async {
    final responseEntity = await safeApiCall(_remoteDS.getOrderDetails(
        pitchId: pitchId, orderId: orderId, subOrderId: subOrderId));

    return responseEntity.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }

  @override
  Future<Either<NetworkError, String>> cancelOrder({String orderId}) async {
    final responseEntity =
        await safeApiCall(_remoteDS.cancelOrder(orderId: orderId));

    return responseEntity.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }

  @override
  Future<Either<NetworkError, OrderPaymentDetails>> getOrderDetailsPayments(
      {String orderId, String type}) async {
    final responseEntity = await safeApiCall(
        _remoteDS.getOrderDetailPayments(orderId: orderId, type: type));

    return responseEntity.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }

  @override
  Future<Either<NetworkError, BookingPendingAmount>> getPendingAmount(
      {String orderId}) async {
    final responseEntity =
        await safeApiCall(_remoteDS.getOrderPendingPayments(orderId: orderId));

    return responseEntity.fold((l) => Left(l), (r) {
      return Right(
        r.data.transform(),
      );
    });
  }
}
