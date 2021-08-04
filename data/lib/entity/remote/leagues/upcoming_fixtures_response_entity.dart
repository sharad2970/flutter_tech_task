import 'package:domain/model/leagues/upcoming_fixtures.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'upcoming_fixtures_response_entity.g.dart';

@JsonSerializable()
class UpcomingResponseEntity
    implements
        BaseLayerDataTransformer<UpcomingResponseEntity, UpcomingFixtures> {
  @JsonKey(name: 'id')
  final int bookingId;
  @JsonKey(name: 'firstTeam')
  final String firstTeam;
  @JsonKey(name: 'secondTeam')
  final String secondTeam;
  @JsonKey(name: 'date')
  final String bookingDate;
  @JsonKey(name: 'from_time')
  final String startTime;
  @JsonKey(name: 'to_time')
  final String endTime;
  @JsonKey(name: 'pitch_no')
  final int pitchNumber;

  UpcomingResponseEntity(
      {this.bookingId,
      this.firstTeam,
      this.secondTeam,
      this.bookingDate,
      this.startTime,
      this.endTime,
      this.pitchNumber});

  factory UpcomingResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$UpcomingResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UpcomingResponseEntityToJson(this);

  @override
  UpcomingResponseEntity restore(data) {
    throw UnimplementedError();
  }

  @override
  UpcomingFixtures transform() {
    return UpcomingFixtures(
      bookingId: this.bookingId,
      firstTeam: this.firstTeam,
      secondTeam: this.secondTeam,
      bookingDate: this.bookingDate,
      startTime: this.startTime,
      endTime: this.endTime,
      pitchNumber: this.pitchNumber,
      isExpanded: false,
    );
  }
}
