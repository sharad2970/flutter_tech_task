import 'package:data/entity/remote/bookings/booking_details_payment_response_entity.dart';
import 'package:data/entity/remote/bookings/booking_details_response_entity.dart';
import 'package:data/entity/remote/bookings/booking_list_response.dart';
import 'package:data/entity/remote/bookings/booking_pending_payments_entity.dart';
import 'package:data/entity/remote/bookings/cancel_booking_response_entity.dart';
import 'package:flutter/widgets.dart';
import 'package:retrofit/retrofit.dart';

abstract class OrderRemoteDS {
  Future<HttpResponse<OrderListResponseEntity>> getOrderList(
      {@required String status, @required int skip, @required int take});

  Future<HttpResponse<OrderDetailsResponseEntity>> getOrderDetails(
      {@required String pitchId,
      @required String orderId,
      @required int subOrderId});

  Future<HttpResponse<CancelOrderResponseEntity>> cancelOrder(
      {@required String orderId});

  Future<HttpResponse<OrderDetailPaymentsResponseEntity>>
      getOrderDetailPayments({@required String orderId, @required String type});

  Future<HttpResponse<OrderDetailPendingPaymentsResponseEntity>>
      getOrderPendingPayments({@required String orderId});
}
