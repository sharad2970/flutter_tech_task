import 'package:data/entity/remote/leagues/upcoming_fixtures_response_entity.dart';
import 'package:domain/model/leagues/upcoming_fixtures.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'upcoming_fixtures_response.g.dart';

@JsonSerializable()
class UpcomingFixturesResponse
    implements
        BaseLayerDataTransformer<UpcomingFixturesResponse,
            List<UpcomingFixtures>> {
  @JsonKey(name: 'data')
  List<UpcomingResponseEntity> data;

  UpcomingFixturesResponse({this.data});

  factory UpcomingFixturesResponse.fromJson(Map<String, dynamic> json) =>
      _$UpcomingFixturesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpcomingFixturesResponseToJson(this);

  @override
  UpcomingFixturesResponse restore(data) {
    throw UnimplementedError();
  }

  @override
  List<UpcomingFixtures> transform() {
    return this.data.map((e) => e.transform()).toList();
  }
}
