import 'package:domain/model/notifications/notification_data.dart';

class NotificationListInfo {
  int count;
  int skip;
  int take;
  List<NotificationData> list;

  NotificationListInfo({
    this.count: 10,
    this.skip: 0,
    this.take: 10,
    this.list,
  });
}
