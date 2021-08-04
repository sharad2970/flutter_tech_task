import 'package:json_annotation/json_annotation.dart';

part 'book_pitch_request_entity.g.dart';

@JsonSerializable()
class BookPitchRequestEntity {
  @JsonKey(name: "date")
  final String date;
  @JsonKey(name: "start_time")
  final String startTime;
  @JsonKey(name: "end_time")
  final String endTime;
  @JsonKey(name: "number_of_booking")
  final String numberOfBookings;
  @JsonKey(name: "price")
  final String price;
  @JsonKey(name: "recurring_status")
  final String recurringStatus;
  @JsonKey(name: "player_id")
  final String playerId;
  @JsonKey(name: "pitch_id")
  final String pitchId;
  @JsonKey(name: "order_id")
  final String orderId;
  @JsonKey(name: "order_type")
  final String orderType;
  @JsonKey(name: "sub_order_id")
  final String subOrderId;
  @JsonKey(name: 'bottleId')
  final int bottleId;

  BookPitchRequestEntity(
      {this.date,
      this.startTime,
      this.endTime,
      this.numberOfBookings,
      this.price,
      this.recurringStatus,
      this.playerId,
      this.pitchId,
      this.orderId,
      this.orderType,
      this.subOrderId,
      this.bottleId});

  factory BookPitchRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$BookPitchRequestEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BookPitchRequestEntityToJson(this);
}
