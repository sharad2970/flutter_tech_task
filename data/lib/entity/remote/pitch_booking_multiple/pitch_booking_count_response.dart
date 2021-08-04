import 'package:data/entity/remote/pitch_booking_multiple/pitch_booking_count_response_entity.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pitch_booking_count_response.g.dart';

@JsonSerializable()
class PitchBookingCountResponse
    implements
        BaseLayerDataTransformer<PitchBookingCountResponse,
            PitchBookingCountResponseEntity> {
  @JsonKey(name: "data")
  final PitchBookingCountResponseEntity data;

  PitchBookingCountResponse(this.data);

  factory PitchBookingCountResponse.fromJson(Map<String, dynamic> json) =>
      _$PitchBookingCountResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PitchBookingCountResponseToJson(this);

  @override
  PitchBookingCountResponse restore(PitchBookingCountResponseEntity data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  PitchBookingCountResponseEntity transform() {
    return PitchBookingCountResponseEntity(
        bookingNumber: this.data.bookingNumber);
  }
}
