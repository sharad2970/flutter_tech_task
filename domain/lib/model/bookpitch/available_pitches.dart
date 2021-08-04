class AvailablePitches {
  final int id;
  final String number;
  final String image;
  final String address;
  final String price;
  final int duration;
  final String startTime;
  final String endTime;
  final int isDefaultPrice;
  final int isDefaultTime;
  final int status;
  final String createdAt;
  final String updatedAt;
  final String deletedAt;
  bool available;
  bool isSelected;

  AvailablePitches(
      {this.id,
      this.number,
      this.image,
      this.address,
      this.price,
      this.duration,
      this.startTime,
      this.endTime,
      this.isDefaultPrice,
      this.isDefaultTime,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.available,
      this.isSelected: false});
}
