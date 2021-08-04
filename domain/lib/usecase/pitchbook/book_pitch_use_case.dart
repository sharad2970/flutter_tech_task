import 'package:dartz/dartz.dart';
import 'package:domain/constants/goal_one_errors.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/base/error_info.dart';
import 'package:domain/model/book_pitch_request.dart';
import 'package:domain/model/bookpitch/pitch_booking.dart';
import 'package:domain/repository/pitchbooking/pitch_book_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';
import 'package:domain/utils/validator.dart';

/// Book Pitch Use case scenario
class BookPitchUseCase
    extends BaseUseCase<NetworkError, BookPitchUseCaseParams, PitchBooking> {
  PitchBookRepository _pitchBookRepository;

  BookPitchUseCase(this._pitchBookRepository);

  @override
  Future<Either<NetworkError, PitchBooking>> execute(
      {BookPitchUseCaseParams params}) {
    return _pitchBookRepository.bookPitch(request: params.bookPitchRequest);
  }
}

class BookPitchUseCaseParams extends Params {
  final BookPitchRequest bookPitchRequest;

  BookPitchUseCaseParams({this.bookPitchRequest});

  @override
  Either<GoalOneAppError, bool> verify() {
    if (Validator.isEmpty(bookPitchRequest.date)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_DATE,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (Validator.isEmpty(bookPitchRequest.startTime)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_START_TIME,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (Validator.isEmpty(bookPitchRequest.endTime)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_END_TIME,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (Validator.isEmpty(bookPitchRequest.noOfBookings)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_NO_OF_BOOKINGS,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (Validator.isEmpty(bookPitchRequest.price)) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_NO_OF_BOOKINGS,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    } else if (Validator.isEmpty('${bookPitchRequest.pitchId}')) {
      return Left(GoalOneAppError(
          type: ErrorType.EMPTY_PITCH_ID,
          throwable: Exception(),
          error: ErrorInfo(message: '')));
    }

    return Right(true);
  }
}
