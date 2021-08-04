import 'package:domain/model/staticPage/static_page_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'static_page_info_entity.g.dart';

@JsonSerializable()
class StaticPageResponseInfoEntity
    implements
        BaseLayerDataTransformer<StaticPageResponseInfoEntity, StaticPageInfo> {
  @JsonKey(name: 'key_name')
  final String keyName;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'content')
  final String content;
  @JsonKey(name: 'slug')
  final String slug;
  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'country_code')
  final String countryCode;
  @JsonKey(name: 'mobile_number')
  final String mobileNumber;
  @JsonKey(name: 'zip_code')
  final String zipCode;
  @JsonKey(name: 'longitude')
  final String longitude;
  @JsonKey(name: 'latitude')
  final String latitude;
  @JsonKey(name: 'email')
  final String email;

  StaticPageResponseInfoEntity(
      {this.keyName,
      this.title,
      this.content,
      this.slug,
      this.address,
      this.zipCode,
      this.countryCode,
      this.mobileNumber,
      this.latitude,
      this.longitude,
      this.email});

  factory StaticPageResponseInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$StaticPageResponseInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$StaticPageResponseInfoEntityToJson(this);

  @override
  StaticPageResponseInfoEntity restore(StaticPageInfo data) {
    throw UnimplementedError();
  }

  @override
  StaticPageInfo transform() {
    return StaticPageInfo(
      content: this.content ?? '',
      address: this.address ?? '',
      countryCode: this.countryCode ?? '',
      mobileNumber: this.mobileNumber ?? '',
      latitude: this.latitude ?? '',
      longitude: this.longitude ?? '',
      slug: this.slug ?? '',
      zipCode: this.zipCode ?? '',
      email: this.email ?? '',
    );
  }
}
