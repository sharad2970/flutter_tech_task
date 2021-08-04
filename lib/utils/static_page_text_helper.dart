import 'package:domain/constants/enum/static_page_enum.dart';

class StaticPageLocalisation {
  static String text({
    StaticPageEnum staticPageEnum,
    String aboutUs,
    String tnc,
    String privacy,
    String locateUs,
  }) {
    switch (staticPageEnum) {
      case StaticPageEnum.ABOUT_US:
        return aboutUs;
      case StaticPageEnum.TNC:
        return tnc;
      case StaticPageEnum.PRIVACY_POLICY:
        return privacy;
      case StaticPageEnum.LOCATE_US:
        return locateUs;
      default:
        return "-";
    }
  }
}
