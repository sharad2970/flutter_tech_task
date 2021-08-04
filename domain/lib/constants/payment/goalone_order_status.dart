/// Order Status class (can be updated if changes need update from backend)
class OrderStatus {
  OrderStatus._();

  static const String PENDING = "Pending";
  static const String COMPLETED = "Completed";
  static const String PLAYER_CANCELLED = "Player Cancelled";
  static const String ADMIN_CANCELED = "Admin Cancelled";
}
