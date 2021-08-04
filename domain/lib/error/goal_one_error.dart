import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:flutter/foundation.dart';

class GoalOneAppError implements Exception {
  ErrorType type;
  ErrorInfo error;
  Exception throwable;

  GoalOneAppError({
    @required this.throwable,
    @required this.error,
    @required this.type,
  });
}
