// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePasswordResponse _$CreatePasswordResponseFromJson(
    Map<String, dynamic> json) {
  return CreatePasswordResponse(
    json['data'] == null
        ? null
        : UserEntity.fromJson(json['data'] as Map<String, dynamic>),
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$CreatePasswordResponseToJson(
        CreatePasswordResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.userEntity,
    };
