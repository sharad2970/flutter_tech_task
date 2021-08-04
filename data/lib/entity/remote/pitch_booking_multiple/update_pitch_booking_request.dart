import 'package:json_annotation/json_annotation.dart';

part 'update_pitch_booking_request.g.dart';

@JsonSerializable()
class UpdatePitchBookingRequest {
  @JsonKey(name: "date")
  final String date;
  @JsonKey(name: "start_time")
  final String startTime;
  @JsonKey(name: "end_time")
  final String endTime;
  @JsonKey(name: "pitch_id")
  final String pitchId;
  @JsonKey(name: "order_id")
  final String orderId;
  @JsonKey(name: "sub_order_id")
  final String subOrderId;
  @JsonKey(name: "bottleId")
  final int bottleId;
  @JsonKey(name: "price")
  final String price;
  UpdatePitchBookingRequest({
    this.date,
    this.startTime,
    this.endTime,
    this.pitchId,
    this.orderId,
    this.subOrderId,
    this.bottleId,
    this.price,
  });

  factory UpdatePitchBookingRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdatePitchBookingRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatePitchBookingRequestToJson(this);
}
