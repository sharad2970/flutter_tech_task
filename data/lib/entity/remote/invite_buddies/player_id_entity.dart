import 'package:json_annotation/json_annotation.dart';

part 'player_id_entity.g.dart';

@JsonSerializable()
class PlayerIdEntity {
  @JsonKey(name: "id")
  final String id;

  PlayerIdEntity({this.id});

  factory PlayerIdEntity.fromJson(Map<String, dynamic> json) =>
      _$PlayerIdEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerIdEntityToJson(this);

  @override
  String toString() {
    return "id:$id";
  }
}
