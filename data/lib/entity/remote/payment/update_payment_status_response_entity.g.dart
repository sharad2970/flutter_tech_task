// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_payment_status_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePaymentStatusResponseEntity _$UpdatePaymentStatusResponseEntityFromJson(
    Map<String, dynamic> json) {
  return UpdatePaymentStatusResponseEntity(
    splitAmount: json['split_amount'] as num,
    blockedPitchIds: (json['blockPitchId'] as List)
        ?.map((e) => e == null
            ? null
            : BlockedPitchIdEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    isBookingSessionExpired: json['isBookingSessionExpired'] as bool,
  );
}

Map<String, dynamic> _$UpdatePaymentStatusResponseEntityToJson(
        UpdatePaymentStatusResponseEntity instance) =>
    <String, dynamic>{
      'split_amount': instance.splitAmount,
      'blockPitchId': instance.blockedPitchIds,
      'isBookingSessionExpired': instance.isBookingSessionExpired,
    };
