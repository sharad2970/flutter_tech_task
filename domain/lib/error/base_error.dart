import 'package:domain/error/goal_one_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/utils/mapper/base_layer_data_transformer.dart';
import 'package:flutter/foundation.dart';

abstract class BaseError
    extends BaseLayerDataTransformer<BaseError, GoalOneAppError>
    implements Exception {
  final ErrorInfo error;
  final Exception cause;

  BaseError({@required this.error, @required this.cause});

  String getFriendlyMessage();

  logError() {}
}
