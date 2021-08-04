import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/notifications/notification_list_info.dart';
import 'package:domain/model/notifications/notifications_page_info.dart';
import 'package:domain/repository/notifications/notification_page_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class NotificationsUseCase  extends BaseUseCase<NetworkError, NotificationPageUseCaseParams, NotificationListInfo> {
  NotificationsPageRepository _repository;

  NotificationsUseCase(this._repository);

  @override
  Future<Either<NetworkError, NotificationListInfo>> execute(
      {NotificationPageUseCaseParams params}) {
    return _repository.getNotificationInfo(skip: params.skip, take: params.take);
  }
}

class NotificationPageUseCaseParams extends Params {
  int skip;
  int take;
  NotificationPageUseCaseParams({this.skip,this.take});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}