import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rules_and_regulations_response_entity.g.dart';

@JsonSerializable()
class RulesAndRegulationsResponseEntity
    implements
        BaseLayerDataTransformer<RulesAndRegulationsResponseEntity, String> {
  @JsonKey(name: 'rules')
  final String rules;

  RulesAndRegulationsResponseEntity(this.rules);

  factory RulesAndRegulationsResponseEntity.fromJson(
          Map<String, dynamic> json) =>
      _$RulesAndRegulationsResponseEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$RulesAndRegulationsResponseEntityToJson(this);

  @override
  RulesAndRegulationsResponseEntity restore(data) {
    throw UnimplementedError();
  }

  @override
  String transform() {
    return this.rules == null ? "" : this.rules;
  }
}
