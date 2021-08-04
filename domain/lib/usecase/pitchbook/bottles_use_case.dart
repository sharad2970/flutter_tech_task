import 'package:dartz/dartz.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/bookpitch/pitch_booking_bottles.dart';
import 'package:domain/repository/pitchbooking/pitch_book_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class BottlesUseCase extends BaseUseCase<NetworkError, BottlesUseCaseParams,
    List<PitchBookingBottles>> {
  PitchBookRepository _pitchBookRepository;

  BottlesUseCase(this._pitchBookRepository);

  @override
  Future<Either<NetworkError, List<PitchBookingBottles>>> execute(
      {BottlesUseCaseParams params}) {
    return _pitchBookRepository.getBottles();
  }
}

class BottlesUseCaseParams extends Params {
  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
