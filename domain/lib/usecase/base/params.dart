import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';

abstract class Params {
  Either<GoalOneAppError, bool> verify();
}
