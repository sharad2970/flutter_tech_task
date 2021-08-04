import 'package:domain/constants/api_constant.dart';

class StaticPageEnum {
  final String _value;

  const StaticPageEnum._(this._value);

  @override
  String toString() {
    return _value.toString();
  }

  static const StaticPageEnum ABOUT_US = StaticPageEnum._(ApiConstant.aboutUs);
  static const StaticPageEnum PRIVACY_POLICY =
      StaticPageEnum._(ApiConstant.privacyPolicy);
  static const StaticPageEnum TNC = StaticPageEnum._(ApiConstant.termsAndCondition);
  static const StaticPageEnum LOCATE_US = StaticPageEnum._(ApiConstant.locateUs);

}
