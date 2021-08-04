import 'package:data/entity/remote/pitch_booking_multiple/update_pitch_response_entity.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:domain/model/pitch_booking_multiple/update_pitch.dart';

part 'update_pitch_booking_response.g.dart';

@JsonSerializable()
class UpdatePitchBookingResponse
    implements BaseLayerDataTransformer<UpdatePitchBookingResponse, UpdatePitch> {
  @JsonKey(name: "message")
  final String message;
  @JsonKey(name: "data")
  UpdatePitchResponseEntity updatePitchErrorResponse;

  UpdatePitchBookingResponse(this.message, this.updatePitchErrorResponse);

  factory UpdatePitchBookingResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdatePitchBookingResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatePitchBookingResponseToJson(this);

  @override
  UpdatePitchBookingResponse restore(data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  UpdatePitch transform() {
    return this.updatePitchErrorResponse.transform();
  }
}
