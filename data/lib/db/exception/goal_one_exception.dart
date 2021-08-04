import 'package:flutter/foundation.dart';

class GoalOneLocalException implements Exception {
  final GoalOneLocalExceptionType goalOneExceptionType;

  GoalOneLocalException({@required this.goalOneExceptionType});
}

class GoalOneLocalExceptionType {
  final int _value;

  const GoalOneLocalExceptionType._(this._value);

  int get value => this._value;

  static const GoalOneLocalExceptionType NO_USER_FOUND =
      GoalOneLocalExceptionType._(2);
  static const GoalOneLocalExceptionType NO_BIO_METRIC_SUPPORT =
      GoalOneLocalExceptionType._(3);
  static const GoalOneLocalExceptionType BIO_METRIC_FAIL =
      GoalOneLocalExceptionType._(4);
  static const GoalOneLocalExceptionType NOTIFICATION_FAILED =
      GoalOneLocalExceptionType._(4);
}
