import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:flutter/foundation.dart';

import 'base_error.dart';

class LocalError extends BaseError {
  LocalError({
    @required String message,
    @required int localError,
    @required Exception cause,
  }) : super(
            error: ErrorInfo(message: message, code: localError), cause: cause);

  @override
  String getFriendlyMessage() {
    return "${error.message}";
  }

  @override
  GoalOneAppError transform() {
    switch (error.code) {
      case 1:
        return GoalOneAppError(
            error: error,
            throwable: cause,
            type: ErrorType.NO_BIO_METRIC_SUPPORT);
      default:
        return GoalOneAppError(
            error: error, throwable: cause, type: ErrorType.IOEXCEPTION);
    }
  }
}
