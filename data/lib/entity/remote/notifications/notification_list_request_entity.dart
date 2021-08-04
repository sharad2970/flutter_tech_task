import 'package:json_annotation/json_annotation.dart';

part 'notification_list_request_entity.g.dart';

@JsonSerializable()
class NotificationListRequest{
  @JsonKey(name:"skip")
  final String skip;
  @JsonKey(name:"take")
  final String take;


  NotificationListRequest({this.skip,this.take});

  factory NotificationListRequest.fromJson(Map<String, dynamic> json) =>
      _$NotificationListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationListRequestToJson(this);
}