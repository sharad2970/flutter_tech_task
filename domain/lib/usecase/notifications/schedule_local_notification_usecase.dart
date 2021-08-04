import 'package:dartz/dartz.dart';
import 'package:domain/error/base_error.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/repository/notifications/notification_page_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class ScheduleLocalNotificationUseCase extends BaseUseCase<BaseError,
    ScheduleLocalNotificationUseCaseParams, void> {
  final NotificationsPageRepository _notificationsPageRepository;

  ScheduleLocalNotificationUseCase(this._notificationsPageRepository);

  @override
  Future<Either<BaseError, void>> execute(
      {ScheduleLocalNotificationUseCaseParams params}) {
    return _notificationsPageRepository.schedule(
        id: params.id,
        title: params.title,
        body: params.body,
        scheduleDate: params.scheduleDate,
        payload: params.payload);
  }
}

class ScheduleLocalNotificationUseCaseParams extends Params {
  final int id;
  final String title;
  final String body;
  final DateTime scheduleDate;
  final Map<String, dynamic> payload;

  ScheduleLocalNotificationUseCaseParams(
      {this.id, this.title, this.body, this.scheduleDate, this.payload});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
