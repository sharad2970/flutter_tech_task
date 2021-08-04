import 'package:dartz/dartz.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/model/invitebuddies/Invite_buddies.dart';
import 'package:domain/model/invitebuddies/Invite_buddies_request.dart';
import 'package:domain/repository/pitchbooking/pitch_book_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

/// use case for [InviteBuddiesUseCase] class to invite buddies against particular pitch booking
class InviteBuddiesUseCase extends BaseUseCase<NetworkError,
    InviteBuddiesUseCaseParams, InviteBuddies> {
  PitchBookRepository _repository;

  InviteBuddiesUseCase(this._repository);

  @override
  Future<Either<NetworkError, InviteBuddies>> execute(
      {InviteBuddiesUseCaseParams params}) {
    return _repository.inviteBuddiesBooking(
        request: params.inviteBuddiesRequest);
  }
}

class InviteBuddiesUseCaseParams extends Params {
  InviteBuddiesRequest inviteBuddiesRequest;

  InviteBuddiesUseCaseParams({this.inviteBuddiesRequest});

  @override
  Either<GoalOneAppError, bool> verify() {
    if (inviteBuddiesRequest.orderId.isEmpty) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_ORDER_ID,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (inviteBuddiesRequest.orderStatus.isEmpty) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_ORDER_STATUS,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (inviteBuddiesRequest.paymentMethod.isEmpty) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_PAYMENT_METHOD,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (inviteBuddiesRequest.paymentStatus.isEmpty) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_PAYMENT_STATUS,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (inviteBuddiesRequest.buddiesList == null ||
        inviteBuddiesRequest.buddiesList.isEmpty) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_BUDDY_LIST,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }
    return Right(true);
  }
}
