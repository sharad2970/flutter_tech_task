import 'package:domain/model/bookings/order_info.dart';

class BookingsRequestInfo {
  int count;
  int skip;
  int take;
  List<OrderInfo> list;

  BookingsRequestInfo({
    this.count: 10,
    this.skip: 0,
    this.take: 10,
    this.list,
  });
}
