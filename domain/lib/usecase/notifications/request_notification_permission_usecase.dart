import 'package:dartz/dartz.dart';
import 'package:domain/error/base_error.dart';
import 'package:domain/repository/notifications/notification_page_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/usecase/base/params.dart';

class RequestNotificationPermissionUseCase extends BaseUseCase<BaseError,
    RequestNotificationUseCaseParams,bool>{
  final NotificationsPageRepository _notificationsPageRepository;

  RequestNotificationPermissionUseCase(this._notificationsPageRepository);

  @override
  Future<Either<BaseError,bool>> execute(
      {RequestNotificationUseCaseParams params}
      ){
    return _notificationsPageRepository.requestNotificationPermission();
  }
}

class RequestNotificationUseCaseParams extends Params{
  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}