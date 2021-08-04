import 'package:data/entity/remote/payment/update_payment_status_response_entity.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:domain/model/payment/update_payment_status.dart';

part 'update_split_payment_status_response.g.dart';

@JsonSerializable()
class UpdateSplitPaymentStatusResponse
    implements BaseLayerDataTransformer<UpdateSplitPaymentStatusResponse, UpdatePaymentStatus> {
  @JsonKey(name: 'data')
  final UpdatePaymentStatusResponseEntity data;

  UpdateSplitPaymentStatusResponse({this.data});

  factory UpdateSplitPaymentStatusResponse.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateSplitPaymentStatusResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UpdateSplitPaymentStatusResponseToJson(this);

  @override
  UpdateSplitPaymentStatusResponse restore(data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  UpdatePaymentStatus transform() {
    // return UpdatePaymentStatus(
    //     splitAmount: this.data.splitAmount == null ? 0.0 : this.data.splitAmount.toDouble(),
    //   blockedPitchIds: this.data.blockedPitchIds.map((e) => e.transform()).toList(),
    //   isBookingSessionExpired: this.data.isBookingSessionExpired != null ? this.data.isBookingSessionExpired : false
    // );
    return this.data.transform();
  }
}
