import 'package:dartz/dartz.dart';
import 'package:domain/error/base_error.dart';
import 'package:domain/repository/notifications/notification_page_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/usecase/base/params.dart';

class InitLocalNotificationUseCase extends BaseUseCase<BaseError,InitLocalNotificationUseCaseParams,void>{
  final NotificationsPageRepository _notificationsPageRepository;

  InitLocalNotificationUseCase(this._notificationsPageRepository);

  @override
  Future<Either<BaseError,void>> execute(
  {InitLocalNotificationUseCaseParams params}
      ){
    return _notificationsPageRepository.initLocalInfo();
  }
}

class InitLocalNotificationUseCaseParams extends Params{
  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}