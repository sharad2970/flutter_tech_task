import 'package:dartz/dartz.dart';
import 'package:domain/constants/enum/language_enum.dart';
import 'package:domain/error/base_error.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/repository/user/user_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class UpdateLanguageUsecase
    extends BaseUseCase<BaseError, UpdateLanguageUsecaseParam, bool> {
  final UserRepository _userRepository;

  UpdateLanguageUsecase(this._userRepository);

  @override
  Future<Either<BaseError, bool>> execute(
      {UpdateLanguageUsecaseParam params}) async {
    return Future.value(
      (await _userRepository.changeLanguage(locale: params.locale))
          .fold((l) => Left(l), (tokenUser) async {
        return _userRepository.updateLanguage(locale: params.locale);
      }),
    );
  }
}

class UpdateLanguageUsecaseParam extends Params {
  final LanguageEnum locale;

  UpdateLanguageUsecaseParam({this.locale});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
