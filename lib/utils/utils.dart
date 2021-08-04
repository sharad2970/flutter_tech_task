/// general utility class
class Utils {
  ///Singleton factory
  static final Utils _instance = Utils._internal();

  factory Utils() {
    return _instance;
  }

  Utils._internal();

  /// print the reference log
  static log(String tag, String value) {
    print("[$tag] => $value");
  }
}


