import 'package:data/entity/remote/staticPage/static_page_info_entity.dart';
import 'package:domain/model/staticPage/static_page_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'static_page_response_entity.g.dart';

@JsonSerializable()
class StaticPageResponseEntity
    implements
        BaseLayerDataTransformer<StaticPageResponseEntity, StaticPageInfo> {
  @JsonKey(name: 'data')
  StaticPageResponseInfoEntity data;

  StaticPageResponseEntity();

  factory StaticPageResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$StaticPageResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$StaticPageResponseEntityToJson(this);

  @override
  StaticPageResponseEntity restore(StaticPageInfo data) {
    throw UnimplementedError();
  }

  @override
  StaticPageInfo transform() {
    return data.transform();
  }
}
