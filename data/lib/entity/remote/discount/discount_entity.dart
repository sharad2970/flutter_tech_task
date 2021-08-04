import 'package:domain/model/discount/discount_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'discount_entity.g.dart';

@JsonSerializable()
class DiscountEntity
    implements
        BaseLayerDataTransformer<DiscountEntity, DiscountInfo> {
  @JsonKey(name: 'for_10_bookings')
  int bookingFor10 ;
  @JsonKey(name: 'for_20_bookings')
  int bookingFor20 ;
  @JsonKey(name: 'description')
  String  description;


  DiscountEntity({this.bookingFor10, this.bookingFor20,this.description});

  factory DiscountEntity.fromJson(Map<String, dynamic> json) =>
      _$DiscountEntityFromJson(json);

  Map<String, dynamic> toJson() => _$DiscountEntityToJson(this);

  @override
  DiscountEntity restore(DiscountInfo data) {
    throw UnimplementedError();
  }

  @override
  DiscountInfo transform() {
    return DiscountInfo(
        bookingForTen: bookingFor10 ?? '',
        bookingForTwenty: bookingFor20 ?? '',
      description: description ?? ''
    );
  }
}
