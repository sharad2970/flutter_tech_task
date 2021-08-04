import 'package:dartz/dartz.dart';
import 'package:data/db/exception/goal_one_exception.dart';
import 'package:domain/error/database_error.dart';
import 'package:flutter/services.dart';

Future<Either<DatabaseError, T>> safeDbCall<T>(Future<T> dbCall) async {
  try {
    final originalResponse = await dbCall;
    return Right(originalResponse);
  } catch (exception) {
    switch (exception.runtimeType) {
      case GoalOneLocalException:
        if (exception is GoalOneLocalException) {
          switch (exception.goalOneExceptionType) {
            case GoalOneLocalExceptionType.NO_USER_FOUND:
              return Left(
                DatabaseError(
                  message: exception.toString(),
                  databaseError: exception.goalOneExceptionType.value,
                  // Should be error as per the case
                  cause: Exception(exception.toString()),
                ),
              );
            default:
              return Left(
                DatabaseError(
                  message: exception.toString(),
                  databaseError: 0, // Should be error as per the case
                  cause: Exception("Database Error"),
                ),
              );
          }
        } else {
          return Left(
            DatabaseError(
              message: exception.toString(),
              databaseError: 0, // Should be error as per the case
              cause: Exception("Database Error"),
            ),
          );
        }
        break;
      case UnsupportedError:
      case MissingPluginException:
        return Left(
          DatabaseError(
            message: exception.toString(),
            databaseError: 1, // Should be error as per the case
            cause: Exception(exception.toString()),
          ),
        );

      default:
        return Left(
          DatabaseError(
            message: exception.toString(),
            databaseError: 0, // Should be error as per the case
            cause: Exception("Database Error"),
          ),
        );
    }
  }
}
