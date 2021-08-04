

import 'package:dartz/dartz.dart';
import 'package:domain/error/base_error.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/repository/notifications/notification_page_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class ConfigureOnLaunchPushNotificationUseCase extends BaseUseCase<BaseError,
    ConfigureOnLaunchPushNotificationUseCaseParams, void> {
  final NotificationsPageRepository _notificationRepository;

  ConfigureOnLaunchPushNotificationUseCase(this._notificationRepository);

  @override
  Future<Either<BaseError, void>> execute(
      {ConfigureOnLaunchPushNotificationUseCaseParams params}) {
    return _notificationRepository.configureOnLaunchPushNotification();
  }
}

class ConfigureOnLaunchPushNotificationUseCaseParams extends Params {
  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}