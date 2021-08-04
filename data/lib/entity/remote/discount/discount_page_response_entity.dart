import 'package:data/entity/remote/discount/discount_entity.dart';
import 'package:domain/model/discount/discount_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'discount_page_response_entity.g.dart';

@JsonSerializable()
class DiscountPageResponseEntity
    implements
        BaseLayerDataTransformer<DiscountPageResponseEntity, DiscountInfo> {
  @JsonKey(name: "message")
  final String message;
  @JsonKey(name: 'data')
  final DiscountEntity discountEntity;

  DiscountPageResponseEntity(this.discountEntity, {this.message});


  factory DiscountPageResponseEntity.fromJson(Map<String, dynamic> json) {
    return _$DiscountPageResponseEntityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DiscountPageResponseEntityToJson(this);

  @override
  DiscountPageResponseEntity restore(DiscountInfo data) {
    throw UnimplementedError();
  }

  @override
  DiscountInfo transform() {
    return this.discountEntity.transform();
  }
}
