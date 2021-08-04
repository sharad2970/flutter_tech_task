import 'package:domain/model/booking_details/booking_details_request_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'booking_details_order_info_entity.g.dart';

@JsonSerializable()
class BookingDetailsInfoEntity
    implements
        BaseLayerDataTransformer<BookingDetailsInfoEntity,
            BookingDetailsRequestInfo> {
  @JsonKey(name: 'date')
  String date;
  @JsonKey(name: 'time')
  String time;
  @JsonKey(name: 'Duration')
  String duration;
  @JsonKey(name: 'pitch_number')
  int pitchNumber;
  @JsonKey(name: 'order_id')
  int orderId;
  @JsonKey(name: 'booking_date')
  String bookingDate;
  @JsonKey(name: 'booking_type')
  String bookingType;
  @JsonKey(name: 'payment_type')
  String paymentType;
  @JsonKey(name: 'payment_status')
  String paymentStatus;
  @JsonKey(name: 'cancel')
  bool cancelBooking;
  @JsonKey(name: 'paid_amount')
  String amountPaid;
  @JsonKey(name: 'total_amount')
  String totalAmount;
  @JsonKey(name: "bottle_count")
  String bottleCount;

  BookingDetailsInfoEntity({
    this.date,
    this.time,
    this.duration,
    this.pitchNumber,
    this.orderId,
    this.bookingDate,
    this.bookingType,
    this.paymentType,
    this.paymentStatus,
    this.cancelBooking,
    this.amountPaid,
    this.bottleCount,
  });

  factory BookingDetailsInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$BookingDetailsInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BookingDetailsInfoEntityToJson(this);

  @override
  BookingDetailsInfoEntity restore(BookingDetailsRequestInfo data) {
    throw UnimplementedError();
  }

  @override
  BookingDetailsRequestInfo transform() {
    return BookingDetailsRequestInfo(
      orderId: orderId,
      date: date,
      amountPaid: amountPaid,
      totalAmount: totalAmount,
      bookingDate: bookingDate,
      bookingType: bookingType,
      cancel: cancelBooking,
      duration: duration,
      paymentStatus: paymentStatus,
      paymentType: paymentType,
      pitchNumber: pitchNumber,
      time: time,
      bottleCount: this.bottleCount,
    );
  }
}
