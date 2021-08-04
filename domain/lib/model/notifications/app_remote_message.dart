import 'package:domain/model/notifications/app_remote_notification.dart';

class AppRemoteMessage{
  final String collapseKey;
  final Map<String,dynamic> data;
  final String from;
  final String messageId;
  final String messageType;
   final AppRemoteNotification notification;

  AppRemoteMessage({
      this.collapseKey,
      this.notification,
      this.data,
      this.messageId,
      this.from,
      this.messageType});
}