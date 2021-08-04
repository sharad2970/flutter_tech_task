// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invite_buddies_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InviteBuddiesResponseEntity _$InviteBuddiesResponseEntityFromJson(
    Map<String, dynamic> json) {
  return InviteBuddiesResponseEntity(
    splitAmount: json['split_amount'] as num,
    blockPitchId: (json['blockPitchId'] as List)
        ?.map((e) => e == null
            ? null
            : BlockedPitchIdEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    isBookingSessionExpired: json['isBookingSessionExpired'] as bool,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$InviteBuddiesResponseEntityToJson(
        InviteBuddiesResponseEntity instance) =>
    <String, dynamic>{
      'split_amount': instance.splitAmount,
      'blockPitchId': instance.blockPitchId,
      'isBookingSessionExpired': instance.isBookingSessionExpired,
      'message': instance.message,
    };
