import 'package:domain/model/bookpitch/available_pitches.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'available_pitches_entity.g.dart';

@JsonSerializable()
class AvailablePitchesEntity
    implements
        BaseLayerDataTransformer<AvailablePitchesEntity, AvailablePitches> {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'number')
  String number;
  @JsonKey(name: 'image')
  String image;
  @JsonKey(name: 'address')
  String address;
  @JsonKey(name: 'price')
  String price;
  @JsonKey(name: 'duration')
  int duration;
  @JsonKey(name: 'start_time')
  String startTime;
  @JsonKey(name: 'end_time')
  String endTime;
  @JsonKey(name: 'is_default_price')
  int isDefaultPrice;
  @JsonKey(name: 'is_default_time')
  int isDefaultTime;
  @JsonKey(name: 'status')
  int status;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;
  @JsonKey(name: 'deleted_at')
  dynamic deletedAt;
  @JsonKey(name: 'available')
  bool available;

  AvailablePitchesEntity(
      {this.id: -1,
      this.number: "",
      this.image: "",
      this.address: "",
      this.price: "",
      this.duration: -1,
      this.startTime: "",
      this.endTime: "",
      this.isDefaultPrice: -1,
      this.isDefaultTime: -1,
      this.status: -1,
      this.createdAt: "",
      this.updatedAt: "",
      this.deletedAt: "",
      this.available: false});

  factory AvailablePitchesEntity.fromJson(Map<String, dynamic> json) =>
      _$AvailablePitchesEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AvailablePitchesEntityToJson(this);

  @override
  AvailablePitchesEntity restore(AvailablePitches data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  AvailablePitches transform() {
    return AvailablePitches(
        id: id,
        number: number,
        image: image,
        address: address,
        price: price,
        duration: duration,
        startTime: startTime,
        endTime: endTime,
        isDefaultPrice: isDefaultPrice,
        isDefaultTime: isDefaultTime,
        status: status,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
        available: available);
  }
}
