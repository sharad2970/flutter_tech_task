import 'package:domain/model/pitch_booking_multiple/pitch_booking_count.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pitch_booking_count_response_entity.g.dart';

@JsonSerializable()
class PitchBookingCountResponseEntity
    implements
        BaseLayerDataTransformer<PitchBookingCountResponseEntity,
            PitchBookingCount> {
  @JsonKey(name: 'bookingNumber')
  final int bookingNumber;

  PitchBookingCountResponseEntity({
    this.bookingNumber,
  });

  factory PitchBookingCountResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$PitchBookingCountResponseEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PitchBookingCountResponseEntityToJson(this);

  @override
  PitchBookingCountResponseEntity restore(PitchBookingCount data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  PitchBookingCount transform() {
    return PitchBookingCount(
        count: this.bookingNumber == null ? 0 : this.bookingNumber);
  }
}
