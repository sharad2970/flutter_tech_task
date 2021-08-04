import 'package:data/entity/remote/user/user_entity.dart';
import 'package:domain/model/user.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_password_response.g.dart';

@JsonSerializable()
class CreatePasswordResponse
    implements BaseLayerDataTransformer<CreatePasswordResponse, User> {
  @JsonKey(name: "message")
  final String message;
  @JsonKey(name: 'data')
  final UserEntity userEntity;

  CreatePasswordResponse(this.userEntity, {this.message});

  factory CreatePasswordResponse.fromJson(Map<String, dynamic> json) {
    return _$CreatePasswordResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CreatePasswordResponseToJson(this);

  @override
  CreatePasswordResponse restore(User data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  User transform() {
    return this.userEntity.transform();
  }
}
