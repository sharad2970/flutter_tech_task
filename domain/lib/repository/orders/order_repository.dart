import 'package:dartz/dartz.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/booking_details/booking_details_request_info.dart';
import 'package:domain/model/booking_details/booking_payment_details.dart';
import 'package:domain/model/booking_details/booking_pending_amount.dart';
import 'package:domain/model/bookings/bookings_request_info.dart';

abstract class OrderRepository {
  Future<Either<NetworkError, BookingsRequestInfo>> getOrderRequestList(
      {String status, int skip, int take});

  /// fetch all details depending input [playerId,orderId,pitchId]
  Future<Either<NetworkError, BookingDetailsRequestInfo>> getOrderDetails(
      {String orderId, String pitchId, int subOrderId});

  Future<Either<NetworkError, String>> cancelOrder({String orderId});

  Future<Either<NetworkError, OrderPaymentDetails>> getOrderDetailsPayments(
      {String orderId, String type});

  Future<Either<NetworkError, BookingPendingAmount>> getPendingAmount(
      {String orderId});
}
