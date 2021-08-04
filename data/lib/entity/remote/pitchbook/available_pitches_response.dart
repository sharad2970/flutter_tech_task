import 'package:data/entity/remote/pitchbook/available_pitches_entity.dart';
import 'package:domain/model/bookpitch/available_pitches.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'available_pitches_response.g.dart';

@JsonSerializable()
class AvailablePitchesResponse
    implements
        BaseLayerDataTransformer<AvailablePitchesResponse,
            List<AvailablePitches>> {
  @JsonKey(name: 'data')
  final List<AvailablePitchesEntity> data;

  AvailablePitchesResponse({this.data});

  factory AvailablePitchesResponse.fromJson(Map<String, dynamic> json) =>
      _$AvailablePitchesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AvailablePitchesResponseToJson(this);

  @override
  AvailablePitchesResponse restore(List<AvailablePitches> data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  List<AvailablePitches> transform() {
    return data.map((e) => e.transform()).toList();
  }
}
