import 'package:dartz/dartz.dart';
import 'package:domain/error/base_error.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/model/notifications/notifications_page_info.dart';
import 'package:domain/repository/notifications/notification_page_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class ListenNotificationUseCase extends BaseUseCase<BaseError,
    ListenNotificationUseCaseParams, Stream<NotificationInfo>> {
  final NotificationsPageRepository _notificationsPageRepository;

  ListenNotificationUseCase(this._notificationsPageRepository);

  @override
  Future<Either<BaseError, Stream<NotificationInfo>>> execute(
      {ListenNotificationUseCaseParams params}) {
    return _notificationsPageRepository.listenInfo();
  }
}

class ListenNotificationUseCaseParams extends Params {
  ListenNotificationUseCaseParams();

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
