import 'package:domain/constants/app_constant.dart';

class BookingTypeEnum {
  final String _value;

  const BookingTypeEnum._(this._value);

  @override
  String toString() {
    return _value.toString();
  }

  static const BookingTypeEnum SINGLE = BookingTypeEnum._(Constant.SINGLE);
  static const BookingTypeEnum MULTIPLE = BookingTypeEnum._(Constant.MULTIPLE);
  static const BookingTypeEnum LEAGUE = BookingTypeEnum._(Constant.LEAGUE);
  static const BookingTypeEnum KNOCKOUT = BookingTypeEnum._(Constant.KNOCKOUT);
  static const BookingTypeEnum NONE = BookingTypeEnum._('');
}
