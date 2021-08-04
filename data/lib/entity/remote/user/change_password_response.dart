import 'package:data/entity/remote/user/user_entity.dart';
import 'package:domain/model/user.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'change_password_response.g.dart';

@JsonSerializable()
class ChangePasswordResponse
    implements BaseLayerDataTransformer<ChangePasswordResponse, User> {
  @JsonKey(name: "message")
  final String message;
  @JsonKey(name: 'data')
  final UserEntity userEntity;

  ChangePasswordResponse(this.userEntity, {this.message});

  factory ChangePasswordResponse.fromJson(Map<String, dynamic> json) {
    return _$ChangePasswordResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChangePasswordResponseToJson(this);

  @override
  ChangePasswordResponse restore(User data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  User transform() {
    return this.userEntity.transform();
  }
}
