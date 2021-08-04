import 'package:data/entity/remote/knokcout_detail/knockout_detail_info_entity.dart';
import 'package:domain/model/knockout/knockout_details.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'knockout_detail_response_entity.g.dart';

@JsonSerializable()
class KnockoutDetailResponseEntity
    implements
        BaseLayerDataTransformer<KnockoutDetailResponseEntity,
            List<KnockoutDetails>> {
  @JsonKey(name: 'data')
  List<KnockoutDetailInfoEntity> data;

  KnockoutDetailResponseEntity();

  factory KnockoutDetailResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$KnockoutDetailResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$KnockoutDetailResponseEntityToJson(this);

  @override
  KnockoutDetailResponseEntity restore(List<KnockoutDetails> data) {
    throw UnimplementedError();
  }

  @override
  List<KnockoutDetails> transform() {
    return data.map((e) => e.transform()).toList();
  }
}
