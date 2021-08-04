import 'package:domain/constants/notification/notification_constant.dart';

enum NotificationType {
  BUDDY_REQUEST,
  LEAGUE_INVITE,
  BOOKING_INVITE,
  SPLIT_PAYMENT,
  KNOCKOUT_INVITE,
  LEAGUE_CAPTAIN,
  CANCEL_ORDER,
  NONE,
}

extension NotificationTypeExtn on String {
  NotificationType mapToNotificationType() {
    switch (this) {
      case NotificationConstant.AddBuddyToOrder:
        return NotificationType.BOOKING_INVITE;
      case NotificationConstant.Knockout:
        return NotificationType.KNOCKOUT_INVITE;
      case NotificationConstant.League:
        return NotificationType.LEAGUE_INVITE;
      case NotificationConstant.BuddyRequest:
        return NotificationType.BUDDY_REQUEST;
      case NotificationConstant.SplitPayment:
        return NotificationType.SPLIT_PAYMENT;
      case NotificationConstant.LeagueCaptain:
        return NotificationType.LEAGUE_CAPTAIN;
      case NotificationConstant.CancelOrder:
        return NotificationType.CANCEL_ORDER;

      default:
        return NotificationType.NONE;
    }
  }
}
