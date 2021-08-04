import 'package:json_annotation/json_annotation.dart';

part 'available_pitch_request_entity.g.dart';

@JsonSerializable()
class AvailablePitchRequestEntity {
  @JsonKey(name: "date")
  final String date;
  @JsonKey(name: "start_time")
  final String startTime;
  @JsonKey(name: "end_time")
  final String endTime;

  AvailablePitchRequestEntity({
    this.date,
    this.startTime,
    this.endTime,
  });

  factory AvailablePitchRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$AvailablePitchRequestEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AvailablePitchRequestEntityToJson(this);
}
