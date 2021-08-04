import 'package:data/entity/remote/leagues/rules_and_regulations_response_entity.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rules_and_regulations_response.g.dart';

@JsonSerializable()
class RulesAndRegulationsResponse
    implements BaseLayerDataTransformer<RulesAndRegulationsResponse, String> {
  @JsonKey(name: 'data')
  final RulesAndRegulationsResponseEntity data;

  RulesAndRegulationsResponse(this.data);

  factory RulesAndRegulationsResponse.fromJson(Map<String, dynamic> json) =>
      _$RulesAndRegulationsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RulesAndRegulationsResponseToJson(this);

  @override
  RulesAndRegulationsResponse restore(data) {
    throw UnimplementedError();
  }

  @override
  String transform() {
    return this.data.transform();
  }
}
