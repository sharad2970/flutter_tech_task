import 'dart:io';

import 'package:domain/constants/enum/notification_message_type_enum.dart';
import 'package:domain/constants/enum/notification_type_enum.dart';
import 'package:domain/model/notifications/app_remote_message.dart';

class NotificationInfo {
  int id;
  String title;
  String body;
  Map<String, dynamic> payload;
  NotificationType notificationType;
  NotificationMessageTypeEnum notificationMessageType;

  NotificationInfo(
      {this.title,
      this.body,
      this.notificationType,
      this.notificationMessageType,
      this.payload,this.id});

  factory NotificationInfo.fromFirebaseNotification(AppRemoteMessage message,
      NotificationMessageTypeEnum notificationMessageTypeEnum) {
    try {
      if (Platform.isAndroid) {
        Map<String, dynamic> data = message.data ?? Map();
        String type = data.getOrElse('type', '0');
        String typeId = data.getOrElse('typeid', "");
        String subOrderId = data.getOrElse('sub_order_id', "");

        String title = message.notification.title ?? "";
        String body = message.notification.body ?? "";

        Map<String, dynamic> payload = Map();
        payload.putIfAbsent('type', () => type);
        payload.putIfAbsent('typeid', () => typeId);
        payload.putIfAbsent('sub_order_id', () => subOrderId);
        print('payload:$payload');

        return NotificationInfo(
          notificationMessageType: notificationMessageTypeEnum,
          payload: payload,
          title: title,
          body: body,
          notificationType: type.mapToNotificationType(),

        );
      } else {
        Map<String, dynamic> data = message.data ?? Map();
        String type = data.getOrElse('type', '0');
        String title = message.notification.title ?? "";
        String body = message.notification.body ?? "";
        Map<String, dynamic> payload = Map();
        payload.putIfAbsent('type', () => type);


        return NotificationInfo(
          notificationMessageType: notificationMessageTypeEnum,
          payload: payload,
          title: title,
          body: body,
          notificationType: type.mapToNotificationType(),
        );
      }
    } catch (exception) {
      print(exception);
      rethrow;
    }
  }
}

extension DefaultMap<K, V> on Map<K, V> {
  V getOrElse(K key, V defaultValue) {
    if (this.containsKey(key)) {
      return ((this[key] == null) ||
              (defaultValue is String
                  ? (this[key] != null && (this[key] as String).isEmpty)
                  : false))
          ? defaultValue
          : this[key];
    } else {
      return defaultValue;
    }
  }
}
