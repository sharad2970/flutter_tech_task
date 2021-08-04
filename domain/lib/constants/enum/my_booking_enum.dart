class MyBookingEnum {
  final String _value;

  const MyBookingEnum._(this._value);

  @override
  String toString() {
    return _value.toString();
  }

  static const MyBookingEnum UPCOMING = MyBookingEnum._('upcoming');
  static const MyBookingEnum PAST = MyBookingEnum._('past');
}
