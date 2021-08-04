import 'package:dartz/dartz.dart';
import 'package:domain/error/database_error.dart';
import 'package:domain/model/contact.dart';

abstract class ContactRepository {
  Future<Either<DatabaseError, List<LocalContact>>> getContactList(
      {String query});
}
