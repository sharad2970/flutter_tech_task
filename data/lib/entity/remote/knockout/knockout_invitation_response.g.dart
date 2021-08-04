// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'knockout_invitation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KnockoutInvitationResponse _$KnockoutInvitationResponseFromJson(
    Map<String, dynamic> json) {
  return KnockoutInvitationResponse(
    data: json['data'] == null
        ? null
        : KnockoutInvitationResponseEntity.fromJson(
            json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$KnockoutInvitationResponseToJson(
        KnockoutInvitationResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
