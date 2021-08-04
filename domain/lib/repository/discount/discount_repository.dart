import 'package:dartz/dartz.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/discount/discount_info.dart';

abstract class DiscountRepository {
  Future<Either<NetworkError, DiscountInfo>> getDiscounts(String lang);
}
