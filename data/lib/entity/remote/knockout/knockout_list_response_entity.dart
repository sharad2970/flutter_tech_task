import 'package:data/entity/remote/knockout/knockout_list_info_entity.dart';
import 'package:domain/model/knockout/knockout_list_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'knockout_list_response_entity.g.dart';

@JsonSerializable()
class KnockoutListResponseEntity
    implements
        BaseLayerDataTransformer<KnockoutListResponseEntity, KnockoutListInfo> {
  @JsonKey(name: 'data')
  KnockoutListInfoEntity data;

  KnockoutListResponseEntity();

  factory KnockoutListResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$KnockoutListResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$KnockoutListResponseEntityToJson(this);

  @override
  KnockoutListResponseEntity restore(KnockoutListInfo data) {
    throw UnimplementedError();
  }

  @override
  KnockoutListInfo transform() {
    if (data != null) return data.transform();
    return KnockoutListInfo();
  }
}
