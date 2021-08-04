import 'package:data/entity/local/user_db_entity.dart';
import 'package:data/entity/remote/bookings/booking_details_payment_response_entity.dart';
import 'package:data/entity/remote/bookings/booking_details_response_entity.dart';
import 'package:data/entity/remote/bookings/booking_list_response.dart';
import 'package:data/entity/remote/bookings/booking_pending_payments_entity.dart';
import 'package:data/entity/remote/bookings/cancel_booking_response_entity.dart';
import 'package:data/network/rest/api_service.dart';
import 'package:data/source/user/user_data_sources.dart';
import 'package:domain/model/user.dart';
import 'package:retrofit/dio.dart';

import '../order_data_source.dart';

class OrderRemoteDSImpl extends OrderRemoteDS {
  final ApiService _apiService;
  UserLocalDS _userLocalDS;

  OrderRemoteDSImpl(this._apiService, this._userLocalDS);

  @override
  Future<HttpResponse<OrderListResponseEntity>> getOrderList(
      {String playerId, String status, int skip, int take}) async {
    UserDBEntity userDBEntity = await _userLocalDS.getCurrentUser();
    User user = userDBEntity.transform();
    Map<String, dynamic> body = Map<String, dynamic>();
    body['player_id'] = user.id;
    body['status'] = status;
    body['skip'] = skip;
    body['take'] = take;
    return _apiService.getOrderList(body: body);
  }

  @override
  Future<HttpResponse<OrderDetailsResponseEntity>> getOrderDetails(
      {String pitchId, String orderId, int subOrderId}) async {
    UserDBEntity userDBEntity = await _userLocalDS.getCurrentUser();
    User user = userDBEntity.transform();
    Map<String, dynamic> body = Map<String, dynamic>();
    body['player_id'] = user.id;
    body['order_id'] = orderId;
    body['pitch_id'] = pitchId;
    body["sub_order_id"] = subOrderId;

    return _apiService.getOrderDetailsByPlayerId(body: body);
  }

  @override
  Future<HttpResponse<CancelOrderResponseEntity>> cancelOrder(
      {String orderId}) async {
    Map<String, dynamic> body = Map<String, dynamic>();

    body['order_id'] = orderId;

    return _apiService.cancelOrder(body: body);
  }

  @override
  Future<HttpResponse<OrderDetailPaymentsResponseEntity>>
      getOrderDetailPayments({String orderId, String type}) async {
    UserDBEntity userDBEntity = await _userLocalDS.getCurrentUser();
    User user = userDBEntity.transform();
    Map<String, dynamic> body = Map<String, dynamic>();
    body['order_id'] = orderId;
    body['player_id'] = user.id;
    body['type'] = type;

    return _apiService.getOrderDetailsPayment(body: body);
  }

  @override
  Future<HttpResponse<OrderDetailPendingPaymentsResponseEntity>>
      getOrderPendingPayments({String orderId, String type}) {
    Map<String, dynamic> body = Map<String, dynamic>();
    body['order_id'] = orderId;

    return _apiService.getOrderPendingPayment(body: body);
  }
}
