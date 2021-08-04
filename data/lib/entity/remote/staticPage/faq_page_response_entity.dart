import 'package:domain/model/staticPage/faq_page_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

import 'faq_page_info_entity.dart';

part 'faq_page_response_entity.g.dart';

@JsonSerializable()
class FaqPageResponseEntity
    implements BaseLayerDataTransformer<FaqPageResponseEntity, List<Faqs>> {
  @JsonKey(name: 'data')
  List<FaqPageResponseInfoEntity> data;

  FaqPageResponseEntity();

  factory FaqPageResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$FaqPageResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$FaqPageResponseEntityToJson(this);

  @override
  FaqPageResponseEntity restore(List<Faqs> data) {
    throw UnimplementedError();
  }

  @override
  List<Faqs> transform() {
    return data.map((e) => e.transform()).toList();
  }
}
