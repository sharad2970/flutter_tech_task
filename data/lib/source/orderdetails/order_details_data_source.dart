import 'package:data/entity/remote/bookings/booking_list_response.dart';
import 'package:flutter/widgets.dart';
import 'package:retrofit/retrofit.dart';

abstract class OrderDetailsRemoteDS {
  Future<HttpResponse<OrderListResponseEntity>> getOrderList(
      {@required String status, @required int skip, @required int take});
}
