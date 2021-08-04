import 'package:dartz/dartz.dart';
import 'package:domain/error/base_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/notifications/device_details.dart';
import 'package:domain/model/notifications/notification_list_info.dart';
import 'package:domain/model/notifications/notifications_page_info.dart';

abstract class NotificationsPageRepository {
  Future<Either<BaseError, String>> getToken();

  Future<Either<BaseError, bool>> requestNotificationPermission();

  Future<Either<BaseError, DeviceDetails>> updateDeviceInfo();

  Future<Either<NetworkError, NotificationListInfo>> getNotificationInfo(
      {int skip, int take}
      );

  Future<Either<BaseError, void>> configurePushNotificationInfo();

  Future<Either<BaseError, Stream<NotificationInfo>>> listenInfo();

  Future<Either<BaseError, void>> initLocalInfo();

  Future<Either<BaseError, void>> schedule(
      {int id,
      String title,
      String body,
      DateTime scheduleDate,
      Map<String, dynamic> payload});

  Future<Either<BaseError, void>> configureOnLaunchPushNotification() ;
}
