import 'package:dartz/dartz.dart';
import 'package:domain/error/network_error.dart';

abstract class ContactUsRepository {
  Future<Either<NetworkError, String>> contactUsInfo(
      {String category, String query});
}
