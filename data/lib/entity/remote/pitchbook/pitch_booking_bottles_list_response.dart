import 'package:data/entity/remote/pitchbook/pitch_booking_bottles_response.entity.dart';
import 'package:domain/model/bookpitch/pitch_booking_bottles.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pitch_booking_bottles_list_response.g.dart';

@JsonSerializable()
class PitchBookingBottlesListResponse
    implements
        BaseLayerDataTransformer<PitchBookingBottlesListResponse,
            List<PitchBookingBottles>> {
  @JsonKey(name: 'data')
  final List<BookPitchBottleResponseEntity> data;

  PitchBookingBottlesListResponse({this.data});

  factory PitchBookingBottlesListResponse.fromJson(Map<String, dynamic> json) =>
      _$PitchBookingBottlesListResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PitchBookingBottlesListResponseToJson(this);

  @override
  PitchBookingBottlesListResponse restore(List<PitchBookingBottles> data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  List<PitchBookingBottles> transform() {
    return data.map((e) => e.transform()).toList();
  }
}
