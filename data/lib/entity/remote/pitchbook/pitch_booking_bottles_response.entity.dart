import 'package:domain/model/bookpitch/pitch_booking_bottles.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pitch_booking_bottles_response.entity.g.dart';

@JsonSerializable()
class BookPitchBottleResponseEntity
    implements
        BaseLayerDataTransformer<BookPitchBottleResponseEntity,
            PitchBookingBottles> {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'bottle_count')
  final int bottleCount;
  @JsonKey(name: 'amount')
  final String amount;

  BookPitchBottleResponseEntity({this.id, this.bottleCount, this.amount});

  factory BookPitchBottleResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$BookPitchBottleResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BookPitchBottleResponseEntityToJson(this);

  @override
  BookPitchBottleResponseEntity restore(PitchBookingBottles data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  PitchBookingBottles transform() {
    return PitchBookingBottles(
      id: id ?? '',
      amount: amount ?? '',
      bottleCount: bottleCount ?? '',
    );
  }
}
