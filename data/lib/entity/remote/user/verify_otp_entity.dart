import 'package:domain/model/user/verify_otp.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_entity.g.dart';

@JsonSerializable()
class VerifyOtpEntity
    implements BaseLayerDataTransformer<VerifyOtpEntity, VerifyOtp> {
  @JsonKey(name: "requested_id")
  final String requestedId;
  @JsonKey(name: "role")
  final String role;
  @JsonKey(name: "code")
  final String code;

  VerifyOtpEntity({this.requestedId, this.role, this.code});

  factory VerifyOtpEntity.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpEntityFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOtpEntityToJson(this);

  @override
  VerifyOtpEntity restore(VerifyOtp user) {
    return VerifyOtpEntity();
  }

  @override
  VerifyOtp transform() {
    return VerifyOtp(
      requestedId: this.requestedId,
      role: this.role,
      code: this.code,
    );
  }
}
