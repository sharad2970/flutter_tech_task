import 'package:domain/error/goal_one_error.dart';
import 'package:flutter_base/utils/status.dart';

class Resource<T> {
  final Status status;
  final T data;
  final GoalOneAppError goalOneAppError;

  Resource._({this.status, this.data, this.goalOneAppError});

  static Resource<T> success<T>({T data}) {
    return Resource<T>._(status: Status.SUCCESS, data: data);
  }

  static Resource<T> error<T>({T data, GoalOneAppError error}) {
    return Resource<T>._(
        status: Status.ERROR, data: data, goalOneAppError: error);
  }

  static Resource<T> loading<T>({T data}) {
    return Resource<T>._(
      data: data,
      status: Status.LOADING,
    );
  }

  static Resource<T> none<T>() {
    return Resource<T>._(
      data: null,
      status: Status.NONE,
    );
  }
}
