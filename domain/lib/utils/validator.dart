class Validator {
  static bool validateEmail(String email) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    return regex.hasMatch(email);
  }

  static bool isEmpty(String data) {
    return data?.isEmpty;
  }

  static bool isMatching(String data1, String data2) {
    return data2.compareTo(data1) == 0;
  }

  static bool isValidOtp(String otp) {
    return otp.isNotEmpty && otp.length == 6;
  }

  static bool isValidPin(String pin) {
    return pin.isNotEmpty && pin.length == 6;
  }

  static bool isEqual(String fValue, String lValue) {
    return fValue == lValue;
  }
}
