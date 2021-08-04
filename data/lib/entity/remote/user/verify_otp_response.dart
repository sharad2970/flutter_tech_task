import 'package:data/entity/remote/user/verify_otp_entity.dart';
import 'package:domain/model/user/verify_otp.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_response.g.dart';

@JsonSerializable()
class VerifyOtpResponse
    implements BaseLayerDataTransformer<VerifyOtpResponse, VerifyOtp> {
  @JsonKey(name: 'data')
  final VerifyOtpEntity verifyOtpEntity;

  VerifyOtpResponse(this.verifyOtpEntity);

  factory VerifyOtpResponse.fromJson(Map<String, dynamic> json) {
    return _$VerifyOtpResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VerifyOtpResponseToJson(this);

  @override
  VerifyOtpResponse restore(VerifyOtp data) {
    // TODO: implement restore
    throw UnimplementedError();
  }

  @override
  VerifyOtp transform() {
    return this.verifyOtpEntity.transform();
  }
}
