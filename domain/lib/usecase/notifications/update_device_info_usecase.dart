import 'package:dartz/dartz.dart';
import 'package:domain/error/base_error.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/notifications/device_details.dart';
import 'package:domain/repository/notifications/notification_page_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class UpdateDeviceInfoUseCase extends BaseUseCase<BaseError,
    UpdateDeviceInfoUseCaseParams, DeviceDetails> {
  final NotificationsPageRepository _notificationsPageRepository;

  UpdateDeviceInfoUseCase(this._notificationsPageRepository);

  @override
  Future<Either<NetworkError, DeviceDetails>> execute(
      {UpdateDeviceInfoUseCaseParams params}) {
    return _notificationsPageRepository.updateDeviceInfo();
  }
}

class UpdateDeviceInfoUseCaseParams extends Params {
  UpdateDeviceInfoUseCaseParams();

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
