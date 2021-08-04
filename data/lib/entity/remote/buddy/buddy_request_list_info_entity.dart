import 'package:data/entity/remote/buddy/buddy_info_entity.dart';
import 'package:domain/model/buddy/buddy_request_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'buddy_request_list_info_entity.g.dart';

@JsonSerializable()
class BuddyRequestListInfoEntity
    implements
        BaseLayerDataTransformer<BuddyRequestListInfoEntity, BuddyRequestInfo> {
  @JsonKey(name: 'buddyList')
  List<BuddyInfoEntity> data;
  @JsonKey(name: 'count')
  int count;
  @JsonKey(name: 'skip')
  int skip;
  @JsonKey(name: 'take')
  int take;

  BuddyRequestListInfoEntity();

  factory BuddyRequestListInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$BuddyRequestListInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BuddyRequestListInfoEntityToJson(this);

  @override
  BuddyRequestListInfoEntity restore(BuddyRequestInfo data) {
    throw UnimplementedError();
  }

  @override
  BuddyRequestInfo transform() {
    return BuddyRequestInfo(
      count: count,
      skip: skip,
      take: take,
      list: data.map((e) => e.transform()).toList(),
    );
  }
}
