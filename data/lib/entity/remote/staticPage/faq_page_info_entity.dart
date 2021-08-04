import 'package:domain/model/staticPage/faq_page_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'faq_page_info_entity.g.dart';

@JsonSerializable()
class FaqPageResponseInfoEntity
    implements BaseLayerDataTransformer<FaqPageResponseInfoEntity, Faqs> {
  @JsonKey(name: 'question ')
  String question;
  @JsonKey(name: 'answer')
  String answer;

  FaqPageResponseInfoEntity({this.question, this.answer});

  factory FaqPageResponseInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$FaqPageResponseInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$FaqPageResponseInfoEntityToJson(this);

  @override
  FaqPageResponseInfoEntity restore(Faqs data) {
    throw UnimplementedError();
  }

  @override
  Faqs transform() {
    return Faqs(
      questions: question,
      answer: answer,
    );
  }
}
