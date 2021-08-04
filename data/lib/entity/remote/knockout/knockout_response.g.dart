// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'knockout_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KnockoutResponse _$KnockoutResponseFromJson(Map<String, dynamic> json) {
  return KnockoutResponse(
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : KnockoutPlayerEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$KnockoutResponseToJson(KnockoutResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
