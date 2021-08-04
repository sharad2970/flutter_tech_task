import 'package:dartz/dartz.dart';
import 'package:domain/error/base_error.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/repository/notifications/notification_page_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class ConfigurePushNotificationUseCase extends BaseUseCase<BaseError,
    ConfigurationNotificationUseCaseParams, void> {
  final NotificationsPageRepository _notificationsPageRepository;

  ConfigurePushNotificationUseCase(this._notificationsPageRepository);

  @override
  Future<Either<BaseError, void>> execute(
      {ConfigurationNotificationUseCaseParams params}) {
    return _notificationsPageRepository.configurePushNotificationInfo();
  }
}

class ConfigurationNotificationUseCaseParams extends Params {
 // ConfigurationNotificationUseCaseParams();

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
