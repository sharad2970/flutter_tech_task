import 'package:data/entity/remote/bookings/player_entity.dart';
import 'package:domain/model/booking_details/booking_pending_amount.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'booking_order_pending_payment_info_entity.g.dart';

@JsonSerializable()
class BookingOrderPendingPaymentInfoEntity
    implements
        BaseLayerDataTransformer<BookingOrderPendingPaymentInfoEntity, BookingPendingAmount> {
  @JsonKey(name: 'pendingAmount')
  double pendingAmount;

  @JsonKey(name: 'player')
  List<PlayerEntity> data;


  BookingOrderPendingPaymentInfoEntity();

  factory BookingOrderPendingPaymentInfoEntity.fromJson(
          Map<String, dynamic> json) =>
      _$BookingOrderPendingPaymentInfoEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$BookingOrderPendingPaymentInfoEntityToJson(this);

  @override
  BookingOrderPendingPaymentInfoEntity restore(BookingPendingAmount data) {
    throw UnimplementedError();
  }

  @override
  BookingPendingAmount transform() {
    return BookingPendingAmount(
        pendingAmount: pendingAmount,
      players: data.map((e) => e.transform()).toList(),
    );
  }
}
