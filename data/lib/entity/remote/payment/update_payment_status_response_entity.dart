import 'package:data/entity/remote/pitchbook/blocked_pitch_id_entity.dart';
import 'package:domain/model/payment/update_payment_status.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_payment_status_response_entity.g.dart';

@JsonSerializable()
class UpdatePaymentStatusResponseEntity
    implements
        BaseLayerDataTransformer<UpdatePaymentStatusResponseEntity,
            UpdatePaymentStatus> {
  @JsonKey(name: 'split_amount')
  final num splitAmount;
  @JsonKey(name: 'blockPitchId')
  final List<BlockedPitchIdEntity> blockedPitchIds;
  @JsonKey(name: 'isBookingSessionExpired')
  final bool isBookingSessionExpired;

  UpdatePaymentStatusResponseEntity(
      {this.splitAmount, this.blockedPitchIds, this.isBookingSessionExpired});

  factory UpdatePaymentStatusResponseEntity.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePaymentStatusResponseEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UpdatePaymentStatusResponseEntityToJson(this);

  @override
  UpdatePaymentStatusResponseEntity restore(data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  UpdatePaymentStatus transform() {
    return UpdatePaymentStatus(
        splitAmount:
            this.splitAmount == null ? 0.0 : this.splitAmount.toDouble(),
        blockedPitchIds:
            (this.blockedPitchIds != null && this.blockedPitchIds.isNotEmpty)
                ? this.blockedPitchIds.map((e) => e.transform()).toList()
                : [],
        isBookingSessionExpired: this.isBookingSessionExpired != null
            ? this.isBookingSessionExpired
            : false);
  }
}
