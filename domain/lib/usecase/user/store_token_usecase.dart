import 'package:dartz/dartz.dart';
import 'package:domain/error/base_error.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class StoreTokenUseCase {

  StoreTokenUseCase();

  @override
  Future<Either> execute({params}) {
    // TODO: implement execute
    throw UnimplementedError();
  }

}

class StoreTokenUseCaseParams extends Params{
  @override
  Either<GoalOneAppError, bool> verify() {
    // TODO: implement verify
    throw UnimplementedError();
  }

}