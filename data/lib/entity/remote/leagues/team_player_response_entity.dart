import 'package:domain/model/leagues/team_player.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'team_player_response_entity.g.dart';

@JsonSerializable()
class TeamPlayerResponseEntity
    implements BaseLayerDataTransformer<TeamPlayerResponseEntity, TeamPlayer> {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'mobile')
  final String mobile;
  @JsonKey(name: 'date_of_birth')
  final String dob;
  @JsonKey(name: 'lang')
  final String lang;
  @JsonKey(name: 'avatar')
  final dynamic avatar;
  @JsonKey(name: 'is_tnc_agreed')
  final int isTnCAgreed;
  @JsonKey(name: 'status')
  final int status;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @JsonKey(name: 'country_code')
  final String countryCode;

  TeamPlayerResponseEntity(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.mobile,
      this.dob,
      this.lang,
      this.avatar,
      this.isTnCAgreed,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.countryCode});

  factory TeamPlayerResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$TeamPlayerResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$TeamPlayerResponseEntityToJson(this);

  @override
  TeamPlayerResponseEntity restore(data) {
    throw UnimplementedError();
  }

  @override
  TeamPlayer transform() {
    return TeamPlayer(
        id: this.id,
        firstName: this.firstName,
        lastName: this.lastName,
        email: this.email,
        mobile: this.mobile,
        dob: this.dob,
        lang: this.lang,
        avatar: this.avatar == null ? "" : this.avatar,
        isTncAgreed: this.isTnCAgreed,
        status: this.status,
        createdAt: this.createdAt,
        updatedAt: this.updatedAt,
        countryCode: this.countryCode);
  }
}
