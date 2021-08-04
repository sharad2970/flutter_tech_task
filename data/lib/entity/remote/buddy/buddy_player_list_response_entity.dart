import 'package:data/entity/remote/buddy/buddy_player_list_info_entity.dart';
import 'package:domain/model/buddy/buddy_player_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'buddy_player_list_response_entity.g.dart';

@JsonSerializable()
class BuddyPlayerListResponseEntity
    implements
        BaseLayerDataTransformer<BuddyPlayerListResponseEntity,
            BuddyPlayerInfo> {
  @JsonKey(name: 'data')
  BuddyPlayerListInfoEntity data;

  BuddyPlayerListResponseEntity();

  factory BuddyPlayerListResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$BuddyPlayerListResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BuddyPlayerListResponseEntityToJson(this);

  @override
  BuddyPlayerListResponseEntity restore(BuddyPlayerInfo data) {
    throw UnimplementedError();
  }

  @override
  BuddyPlayerInfo transform() {
    return data.transform();
  }
}
