import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:domain/model/bookpitch/blocked_pitch.dart';

part 'blocked_pitch_id_entity.g.dart';

@JsonSerializable()
class BlockedPitchIdEntity
    implements
        BaseLayerDataTransformer<BlockedPitchIdEntity, BlockedPitch> {
  @JsonKey(name: 'id')
  final int subOrderId;

  BlockedPitchIdEntity({this.subOrderId});

  factory BlockedPitchIdEntity.fromJson(Map<String, dynamic> json) =>
      _$BlockedPitchIdEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BlockedPitchIdEntityToJson(this);

  @override
  BlockedPitchIdEntity restore(data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  BlockedPitch transform() {
    return BlockedPitch(
        subOrderId: '${this.subOrderId}',
    );
  }
}
