import 'package:intl/intl.dart';

class DateUtil {
  DateUtil._();

  /// get formatted date
  static String getFormattedDate(
      {DateTime inputDate, String format = "dd/MM/yyyy"}) {
    // final DateTime now = DateTime.now();
    var now = DateTime.now();
    now = inputDate;
    try {
      var formatter = DateFormat(format);
      var formatted = formatter.format(now);
      print('formatted date = $formatted');
      return formatted;
    } on Exception catch (e) {
      print('getFormattedDate exception = $e');
    }
    return null;
  }

  /// get formatted date
  static String getFormattedTime(
      {DateTime inputDate,
      int hour,
      Duration addDuration,
      Duration subtractDuration,
      String format = "HH:MM"}) {
    // final DateTime now = DateTime.now();
    var now = DateTime.now();
    // now = inputDate;
    try {
      now = DateTime(hour);
      now.add(addDuration);
      var formatter = DateFormat(format);
      var formatted = formatter.format(now);
      print('formatted date = $formatted');
      return formatted;
    } on Exception catch (e) {
      print('getFormattedDate exception = $e');
    }
    return null;
  }
}
