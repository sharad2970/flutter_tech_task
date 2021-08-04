import 'package:domain/constants/payment/goalone_payment_status.dart';

class OrderPaymentDetails {
  final OrderData data;
  final List<Player> players;

  OrderPaymentDetails({this.data, this.players});
}

class OrderData {
  final String date;
  final String time;
  final int orderId;
  final String paymentStatus;
  final bool canPayBalance;
  final double totalAmount;
  final double totalAmountPaid;
  final String currency;

  OrderData(
      {this.date,
      this.time,
      this.orderId,
      this.paymentStatus,
      this.canPayBalance,
      this.totalAmount,
      this.totalAmountPaid,
      this.currency: GoalOnePaymentStatus.CURRENCY_OMR});
}

class Player {
  final String firstName;
  final String lastName;
  final String paymentStatus;
  final String paymentMethod;
  final int playerId;
  final String splitAmount;
  final String paidByUserFirstName;
  final String paidByUserLastName;
  final int paidPlayerId;
  final int isSplit;

  Player(
      {this.firstName,
      this.lastName,
      this.paymentStatus,
      this.paymentMethod,
      this.playerId,
      this.splitAmount,
      this.paidByUserFirstName,
      this.paidByUserLastName,
      this.paidPlayerId,
      this.isSplit});
}
