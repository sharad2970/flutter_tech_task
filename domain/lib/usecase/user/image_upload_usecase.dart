import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:domain/error/base_error.dart';
import 'package:domain/error/goal_one_error.dart';
import 'package:domain/model/user.dart';
import 'package:domain/repository/user/user_repository.dart';
import 'package:domain/usecase/base/base_usecase.dart';
import 'package:domain/usecase/base/params.dart';

class ImageUploadUseCase
    extends BaseUseCase<BaseError, ImageUploadUseCaseParams, User> {
  UserRepository _userRepository;

  ImageUploadUseCase(this._userRepository);

  /// login user
  @override
  Future<Either<BaseError, User>> execute(
      {ImageUploadUseCaseParams params}) async {
    return Future.value(
      (await _userRepository.imageUpload(file: params.file))
          .fold((l) => Left(l), (tokenUser) async {
        if (tokenUser.id != -1) {
          print(
              "This is the api response for the updated iamge url : ${tokenUser.avatar}");
          return _userRepository.updateUser(tokenUser);
        } else {
          return Right(tokenUser);
        }
      }),
    );
  }
}

class ImageUploadUseCaseParams extends Params {
  final File file;

  ImageUploadUseCaseParams({this.file});

  @override
  Either<GoalOneAppError, bool> verify() {
    return Right(true);
  }
}
