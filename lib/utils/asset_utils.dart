import 'package:flutter/material.dart';

/// assets utility class
class AssetUtils {
  AssetUtils._();

  static const String _svg = "asset/svg/";

  static const String background = _svg + "background.svg";
  static const String logo = _svg + "logo.svg";
  static const String leftArrow = _svg + "left_arrow.svg";
  static const String tick = _svg + "tick.svg";
  static const String tickCircle = _svg + "tick_circle_holo.svg";
  static const String tickCircleFilledWhiteGrass =
      _svg + "tick_circle_filled_white_grass.svg";
  static const String calendar = _svg + "calendar.svg";
  static const String settings = _svg + "settings.svg";
  static const String homeNotification = _svg + "home_notification.svg";
  static const String homeNotificationReceived = _svg + "home_notification_received.svg";
  static const String profile = _svg + "profile.svg";
  static const String avatar = _svg + "avatar.svg";
  static const String book = _svg + "book.svg";
  static const String buddyList = _svg + "buddy_list.svg";
  static const String contactUs = _svg + "contact_us.svg";
  static const String leagues = _svg + "leagues.svg";
  static const String locateUs = _svg + "locate_us.svg";
  static const String myBookings = _svg + "my_bookings.svg";
  static const String payments = _svg + "payments.svg";
  static const String weekendKnockout = _svg + "weekend_knockout.svg";
  static const String rightArrow = _svg + "chevron.svg";
  static const String star = _svg + "star.svg";
  static const String add = _svg + "add.svg";
  static const String home = _svg + "home.svg";
  static const String search = _svg + "search.svg";
  static const String backArrow = _svg + "back_arrow.svg";
  static const String invite = _svg + "invite.svg";
  static const String circleUnselected = _svg + "circle_unselected.svg";
  static const String tickCircleFilledGrass =
      _svg + "tick_circle_filled_grass.svg";
  static const String history = _svg + "history.svg";
  static const String editHolo = _svg + "edit_holo.svg";
  static const String pitch = _svg + "pitch.svg";
  static const String circleUnSelected = _svg + "circle_unselected.svg";
  static const String cancelIconCircle = _svg + "cancel_icon_circle.svg";
  static const String cancelIconCircleRed = _svg + "cancel_icon_circle_red.svg";
  static const String creditCard = _svg + "credit_card.svg";
  static const String debitCard = _svg + "debit_card.svg";
  static const String splitPayment = _svg + "split_payment.svg";
  static const String paymentSelection = _svg + "payment_selection.svg";
  static const String selectFromGallery = _svg + "photo.svg";
  static const String selectFromCamera = _svg + "camera.svg";
  static const String bell = _svg + "bell.svg";
  static const String waterBottles = _svg + "water_bottle.svg";

  /// load assets
  static loadAsset(String path) {
    return AssetImage(path);
  }
}
