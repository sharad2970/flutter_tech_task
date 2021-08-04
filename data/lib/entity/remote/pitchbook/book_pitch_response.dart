import 'package:data/entity/remote/pitchbook/book_pitch_response_entity.dart';
import 'package:domain/model/bookpitch/pitch_booking.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'book_pitch_response.g.dart';

@JsonSerializable()
class BookPitchResponse
    implements BaseLayerDataTransformer<BookPitchResponse, PitchBooking> {
  @JsonKey(name: 'data')
  final BookPitchesResponseEntity data;
  @JsonKey(name: 'message')
  final String message;

  BookPitchResponse({this.data, this.message});

  factory BookPitchResponse.fromJson(Map<String, dynamic> json) =>
      _$BookPitchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BookPitchResponseToJson(this);

  @override
  BookPitchResponse restore(PitchBooking data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  PitchBooking transform() {
    return PitchBooking(
        orderId: data.orderId == null ? '' : '${data.orderId}',
        subOrderId: data.subOrderId == null ? '' : '${data.subOrderId}',
        message: this.message != null ? this.message : '');
  }
}
