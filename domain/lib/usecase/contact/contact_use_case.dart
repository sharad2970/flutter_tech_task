import 'package:dartz/dartz.dart';
import 'package:domain/error/database_error.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/model/contact.dart';
import 'package:domain/repository/contact/contact_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class GetContactListUseCase extends BaseUseCase<DatabaseError,
    GetContactListUseCaseParams, List<LocalContact>> {
  ContactRepository _repository;

  GetContactListUseCase(this._repository);

  @override
  Future<Either<DatabaseError, List<LocalContact>>> execute(
      {GetContactListUseCaseParams params}) {
    return _repository.getContactList(query: params.query);
  }
}

class GetContactListUseCaseParams extends Params {
  String query;

  GetContactListUseCaseParams({this.query});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
