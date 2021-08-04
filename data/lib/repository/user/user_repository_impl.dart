import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:data/db/floor/utils/safe_db_call.dart';
import 'package:data/entity/local/user_db_entity.dart';
import 'package:data/network/rest/api_interceptor.dart';
import 'package:data/network/rest/utils/safe_api_call.dart';
import 'package:data/source/user/user_data_sources.dart';
import 'package:dio/dio.dart';
import 'package:domain/constants/enum/language_enum.dart';
import 'package:domain/error/database_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/notifications/device_details.dart';
import 'package:domain/model/user.dart';
import 'package:domain/model/user/verify_otp.dart';
import 'package:domain/repository/user/user_repository.dart';

/// user repository management class
class UserRepositoryImpl extends UserRepository {
  final UserRemoteDS _remoteDS;
  final UserLocalDS _localDS;
  final Dio _dio;

  UserRepositoryImpl(this._remoteDS, this._localDS, this._dio) {
    _dio.interceptors.add(ApiInterceptor(this, _dio));
  }

  @override
  Future<Either<DatabaseError, Stream<User>>> listenCurrentUser() async {
    final result = await safeDbCall(
      _localDS.listenCurrentUser(),
    );
    return result.fold(
      (l) {
        print("left error is ${l.cause}");
        return Left(l);
      },
      (r) {
        return Right(
          r.map(
            (currentUser) => currentUser.transform(),
          ),
        );
      },
    );
  }

  @override
  Future<Either<DatabaseError, User>> getCurrentUser() async {
    final result = await safeDbCall(
      _localDS.getCurrentUser(),
    );
    return result.fold(
      (l) => Left(l),
      (r) => Right(r.transform()),
    );
  }

  Future<Either<NetworkError, User>> updateUserProfile({
    String firstName,
    String lastName,
    String email,
    String mobile,
    String dob,
    String countryCode,
  }) async {
    final registerResult = await safeApiCall(_remoteDS.updateUserProfile(
      email: email,
      dob: dob,
      firstName: firstName,
      lastName: lastName,
      mobile: mobile,
      countryCode: countryCode,
    ));
    return registerResult.fold(
        (l) => Left(l), (r) => Right(r.data.transform()));
  }

  @override
  Future<Either<NetworkError, User>> imageUpload({File file}) async {
    UserDBEntity userDBEntity = await _localDS.getCurrentUser();
    User localUser = userDBEntity.transform();
    final user = await safeApiCall(
        _remoteDS.uploadUserProfile(file: file, id: localUser.id.toString()));

    return user.fold((l) => Left(l), (r) => Right(r.data.transform()));
  }

  @override
  Future<Either<NetworkError, User>> removeUserImage() async {
    UserDBEntity userDBEntity = await _localDS.getCurrentUser();
    User localUser = userDBEntity.transform();
    final user = await safeApiCall(
        _remoteDS.removeUserImage(id: localUser.id.toString()));

    return user.fold((l) => Left(l), (r) => Right(r.data.transform()));
  }

  @override
  Future<Either<NetworkError, User>> registerUser(
      {String firstName,
      String lastName,
      String email,
      String mobile,
      String dob,
      String countryCode,
      String password,
      String lang}) async {
    final registerResult = await safeApiCall(_remoteDS.registerUser(
        email: email,
        dob: dob,
        firstName: firstName,
        lastName: lastName,
        mobile: mobile,
        password: password,
        countryCode: countryCode,
        lang: lang));

    return registerResult.fold(
        (l) => Left(l), (r) => Right(r.data.transform()));
  }

  @override
  Future<Either<NetworkError, String>> forgotPassword(
      {String email, String countryCode}) async {
    final forgotPassResult = await safeApiCall(
        _remoteDS.forgotPassword(email: email, countryCode: countryCode));

    return forgotPassResult.fold(
        (l) => Left(l), (r) => Right(r.data.transform()));
  }

  @override
  Future<Either<NetworkError, User>> loginUser(
      {String email, String password}) async {
    final loginResult = await safeApiCall(
        _remoteDS.loginWithEmail(email: email, password: password));

    return loginResult.fold((l) => Left(l), (r) => Right(r.data.transform()));
  }

  @override
  Future<Either<DatabaseError, User>> saveUser(User tokenUser) async {
    print("This is the user avatar : ${tokenUser.avatar}");
    final result = await safeDbCall(
      _localDS.saveCurrentUser(UserDBEntity().restore(tokenUser)),
    );
    return result.fold(
      (l) => Left(l),
      (r) => Right(
        tokenUser,
      ),
    );
  }

  @override
  Future<Either<DatabaseError, User>> updateUser(User tokenUser) async {
    final result = await safeDbCall(
      _localDS.updateCurrentUser(UserDBEntity().restore(tokenUser)),
    );
    return result.fold(
      (l) => Left(l),
      (r) => Right(
        tokenUser,
      ),
    );
  }

  @override
  Future<Either<NetworkError, VerifyOtp>> verifyOtp({String code}) async {
    final verifyOtpResponse =
        await safeApiCall(_remoteDS.verifyOtpApiCall(code: code));
    return verifyOtpResponse.fold(
        (l) => Left(l), (r) => Right(r.data.transform()));
  }

  @override
  Future<Either<NetworkError, String>> resetPassword(
      {String requestedId,
      String password,
      String passwordConfirmation}) async {
    final resetPassResponse = await safeApiCall(_remoteDS.resetPasswordApiCall(
        requestedId: requestedId,
        password: password,
        passwordConfirmation: passwordConfirmation));
    return resetPassResponse.fold(
        (l) => Left(l), (r) => Right(r.data.transform()));
  }

  @override
  Future<Either<DatabaseError, bool>> logoutUser() async {
    final logoutUser = await safeDbCall(_localDS.removeUser());
    return logoutUser.fold((l) => Left(l), (r) => Right(r));
  }

  @override
  Future<Either<DatabaseError, bool>> faqUser() async {
    final faqUser = await safeDbCall(_localDS.removeUser());
    return faqUser.fold((l) => Left(l), (r) => Right(r));
  }

  @override
  Future<Either<NetworkError, User>> changePassword(
      {String currentPassword,
      String newPassword,
      String passwordConfirmation}) async {
    final changePassResponse = await safeApiCall(
        _remoteDS.changePasswordApiCall(
            currentPassword: currentPassword,
            newPassword: newPassword,
            passwordConfirmation: passwordConfirmation));
    return changePassResponse.fold(
        (l) => Left(l), (r) => Right(r.data.transform()));
  }

  @override
  Future<Either<DatabaseError, bool>> changePasswordUser() async {
    final changePasswordUser = await safeDbCall(_localDS.removeUser());
    return changePasswordUser.fold((l) => Left(l), (r) => Right(r));
  }

  @override
  Future<Either<DatabaseError, bool>> updateLanguage(
      {LanguageEnum locale}) async {
    final updateLanguage =
        await safeDbCall(_localDS.updateLanguage(locale: locale));
    return updateLanguage.fold((l) => Left(l), (r) => Right(r));
  }

  @override
  Future<Either<NetworkError, String>> deleteUser() async {
    final deleteUser = await safeApiCall(_remoteDS.deleteAccountApiCall());
    return deleteUser.fold((l) => Left(l), (r) => Right(r.data.transform()));
  }

  @override
  Future<Either<NetworkError, User>> changeLanguage(
      {LanguageEnum locale}) async {
    final changePassResponse =
        await safeApiCall(_remoteDS.changeLanguage(locale: locale));
    return changePassResponse.fold(
        (l) => Left(l), (r) => Right(r.data.transform()));
  }

  @override
  Future<Either<NetworkError, DeviceDetails>> storeToken() async {
    final storeToken = await safeApiCall(_remoteDS.storeTokenApiCall());
    return storeToken.fold((l) => Left(l), (r) => Right(r.data.transform()));
  }

  @override
  Future<Either<NetworkError, String>> tokenInvalid() async {
    final tokenInvalid = await safeApiCall(_remoteDS.tokenInvalidApiCall());
    return tokenInvalid.fold((l) => Left(l), (r) => Right(r.data.transform()));
  }
}
