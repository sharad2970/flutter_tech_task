import 'package:data/entity/remote/knockout/knockout_player_entity.dart';
import 'package:domain/model/knockout/knockout.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'knockout_response.g.dart';

@JsonSerializable()
class KnockoutResponse
    implements BaseLayerDataTransformer<KnockoutResponse, List<Knockout>> {
  @JsonKey(name: 'data')
  List<KnockoutPlayerEntity> data;

  KnockoutResponse({this.data});

  factory KnockoutResponse.fromJson(Map<String, dynamic> json) =>
      _$KnockoutResponseFromJson(json);

  Map<String, dynamic> toJson() => _$KnockoutResponseToJson(this);

  @override
  KnockoutResponse restore(data) {
    throw UnimplementedError();
  }

  @override
  List<Knockout> transform() {
    return this.data.map((e) => e.transform()).toList();
  }
}
