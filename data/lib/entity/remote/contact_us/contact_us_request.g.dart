// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_us_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactUsRequest _$ContactUsRequestFromJson(Map<String, dynamic> json) {
  return ContactUsRequest(
    playerId: json['player_id'] as String,
    category: json['category'] as String,
    query: json['query'] as String,
  );
}

Map<String, dynamic> _$ContactUsRequestToJson(ContactUsRequest instance) =>
    <String, dynamic>{
      'player_id': instance.playerId,
      'category': instance.category,
      'query': instance.query,
    };
