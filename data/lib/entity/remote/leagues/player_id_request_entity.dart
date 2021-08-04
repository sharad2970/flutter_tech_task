import 'package:json_annotation/json_annotation.dart';

part 'player_id_request_entity.g.dart';

@JsonSerializable()
class PlayerIdRequestEntity {
  @JsonKey(name: "id")
  final int id;

  PlayerIdRequestEntity({this.id});

  factory PlayerIdRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$PlayerIdRequestEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerIdRequestEntityToJson(this);

  @override
  String toString() {
    return "id:$id";
  }
}
