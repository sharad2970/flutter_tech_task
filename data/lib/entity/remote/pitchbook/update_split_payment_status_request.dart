import 'package:json_annotation/json_annotation.dart';

part 'update_split_payment_status_request.g.dart';

@JsonSerializable()
class UpdateSplitPaymentRequest {
  @JsonKey(name: "order_id")
  final String orderId;
  @JsonKey(name: "payment_method")
  final String paymentMethod;

  UpdateSplitPaymentRequest({this.orderId, this.paymentMethod});

  factory UpdateSplitPaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateSplitPaymentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateSplitPaymentRequestToJson(this);
}
