import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/payment_invitations/payment_invitations.dart';
import 'package:domain/repository/payment_invitations/payment_invitations_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class PaymentInvitationsUseCase extends BaseUseCase<NetworkError,
    PaymentInvitationsUseCaseParams, PaymentInvitations> {
  PaymentInvitationsRepository _repository;

  PaymentInvitationsUseCase(this._repository);

  @override
  Future<Either<NetworkError, PaymentInvitations>> execute(
      {PaymentInvitationsUseCaseParams params}) {
    return _repository.getPaymentInvitationList(
        search: params.search, skip: params.skip, take: params.take);
  }
}

class PaymentInvitationsUseCaseParams extends Params {
  String search;
  int skip;
  int take;

  PaymentInvitationsUseCaseParams({this.search, this.skip, this.take});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
