// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invite_buddies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InviteBuddiesResponse _$InviteBuddiesResponseFromJson(
    Map<String, dynamic> json) {
  return InviteBuddiesResponse(
    data: json['data'] == null
        ? null
        : InviteBuddiesResponseEntity.fromJson(
            json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InviteBuddiesResponseToJson(
        InviteBuddiesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
