import 'package:domain/model/bookpitch/pitch_booking.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'book_pitch_response_entity.g.dart';

@JsonSerializable()
class BookPitchesResponseEntity
    implements
        BaseLayerDataTransformer<BookPitchesResponseEntity, PitchBooking> {
  @JsonKey(name: 'order_id')
  final int orderId;
  @JsonKey(name: 'sub_order_id')
  final int subOrderId;

  BookPitchesResponseEntity({this.orderId, this.subOrderId});

  factory BookPitchesResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$BookPitchesResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BookPitchesResponseEntityToJson(this);

  @override
  BookPitchesResponseEntity restore(PitchBooking data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  PitchBooking transform() {
    return PitchBooking(
        orderId: orderId == null ? '' : '$orderId',
        subOrderId: subOrderId == null ? '' : '$subOrderId');
  }
}
