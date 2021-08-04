import 'package:json_annotation/json_annotation.dart';

part 'pitch_booking_count_request.g.dart';

@JsonSerializable()
class PitchBookingCountRequest {
  @JsonKey(name: "player_id")
  final String playerId;
  @JsonKey(name: "pitch_count")
  final String pitchCount;

  PitchBookingCountRequest({this.playerId, this.pitchCount});

  factory PitchBookingCountRequest.fromJson(Map<String, dynamic> json) =>
      _$PitchBookingCountRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PitchBookingCountRequestToJson(this);
}
