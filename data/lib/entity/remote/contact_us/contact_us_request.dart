import 'package:json_annotation/json_annotation.dart';

part 'contact_us_request.g.dart';

@JsonSerializable()
class ContactUsRequest{
  @JsonKey(name:"player_id")
  final String playerId;
  @JsonKey(name:"category")
  final String category;
  @JsonKey(name:"query")
  final String query;

  ContactUsRequest({this.playerId,this.category,this.query});

  factory ContactUsRequest.fromJson(Map<String, dynamic> json) =>
      _$ContactUsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ContactUsRequestToJson(this);
}