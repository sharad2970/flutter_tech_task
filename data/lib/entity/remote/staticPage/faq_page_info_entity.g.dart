// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_page_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FaqPageResponseInfoEntity _$FaqPageResponseInfoEntityFromJson(
    Map<String, dynamic> json) {
  return FaqPageResponseInfoEntity(
    question: json['question '] as String,
    answer: json['answer'] as String,
  );
}

Map<String, dynamic> _$FaqPageResponseInfoEntityToJson(
        FaqPageResponseInfoEntity instance) =>
    <String, dynamic>{
      'question ': instance.question,
      'answer': instance.answer,
    };
