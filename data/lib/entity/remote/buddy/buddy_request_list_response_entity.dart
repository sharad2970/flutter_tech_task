import 'package:data/entity/remote/buddy/buddy_request_list_info_entity.dart';
import 'package:domain/model/buddy/buddy_request_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'buddy_request_list_response_entity.g.dart';

@JsonSerializable()
class BuddyRequestListResponseEntity
    implements
        BaseLayerDataTransformer<BuddyRequestListResponseEntity,
            BuddyRequestInfo> {
  @JsonKey(name: 'data')
  BuddyRequestListInfoEntity data;

  BuddyRequestListResponseEntity();

  factory BuddyRequestListResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$BuddyRequestListResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BuddyRequestListResponseEntityToJson(this);

  @override
  BuddyRequestListResponseEntity restore(BuddyRequestInfo data) {
    throw UnimplementedError();
  }

  @override
  BuddyRequestInfo transform() {
    return data.transform();
  }
}
