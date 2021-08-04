import 'package:dartz/dartz.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/knockout/knockout_details.dart';

abstract class KnockoutDetailRepository {
  Future<Either<NetworkError, List<KnockoutDetails>>> getKnockoutDetail(
      {String knockoutId});
}
