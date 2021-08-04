import 'package:data/entity/remote/bookings/order_info_entity.dart';
import 'package:domain/model/bookings/bookings_request_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'booking_info_list_entity.g.dart';

@JsonSerializable()
class BookingListInfoEntity
    implements
        BaseLayerDataTransformer<BookingListInfoEntity, BookingsRequestInfo> {
  @JsonKey(name: 'orderDetails')
  List<OrderInfoEntity> data;
  @JsonKey(name: 'count')
  int count;
  @JsonKey(name: 'skip')
  int skip;
  @JsonKey(name: 'take')
  int take;

  BookingListInfoEntity({this.data, this.count, this.skip, this.take});

  factory BookingListInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$BookingListInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BookingListInfoEntityToJson(this);

  @override
  BookingListInfoEntity restore(BookingsRequestInfo data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  BookingsRequestInfo transform() {
    return BookingsRequestInfo(
        list: data.map((e) => e.transform()).toList(),
        count: count,
        skip: skip,
        take: take);
  }
}
