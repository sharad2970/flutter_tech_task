class ForgotPasswordEnum {
  final String _value;

  const ForgotPasswordEnum._(this._value);

  @override
  String toString() {
    return _value.toString();
  }

  static const ForgotPasswordEnum MOBILE = ForgotPasswordEnum._('mobile');
  static const ForgotPasswordEnum EMAIL = ForgotPasswordEnum._('email');
}
