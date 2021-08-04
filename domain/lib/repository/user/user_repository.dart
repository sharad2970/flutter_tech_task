import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:domain/constants/enum/language_enum.dart';
import 'package:domain/error/database_error.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/notifications/device_details.dart';
import 'package:domain/model/user.dart';
import 'package:domain/model/user/verify_otp.dart';

abstract class UserRepository {
  Future<Either<DatabaseError, Stream<User>>> listenCurrentUser();

  /// get current user
  Future<Either<DatabaseError, User>> getCurrentUser();

  ///update User profile
  Future<Either<NetworkError, User>> updateUserProfile({
    String firstName,
    String lastName,
    String email,
    String mobile,
    String dob,
    String countryCode,
  });

  Future<Either<NetworkError, User>> imageUpload({File file});

  Future<Either<NetworkError, User>> removeUserImage();

  /// register new user
  Future<Either<NetworkError, User>> registerUser(
      {String firstName,
      String lastName,
      String email,
      String mobile,
      String dob,
      String password,
      String countryCode,
      String lang});

  /// get otp to update password
  Future<Either<NetworkError, String>> forgotPassword(
      {String email, String countryCode});

  /// login user
  Future<Either<NetworkError, User>> loginUser({String email, String password});

  Future<Either<DatabaseError, User>> saveUser(User tokenUser);

  Future<Either<DatabaseError, User>> updateUser(User tokenUser);

  Future<Either<NetworkError, VerifyOtp>> verifyOtp({String code});

  Future<Either<NetworkError, String>> resetPassword(
      {String requestedId, String password, String passwordConfirmation});

  Future<Either<NetworkError, User>> changePassword(
      {String currentPassword,
      String newPassword,
      String passwordConfirmation});

  Future<Either<DatabaseError, bool>> logoutUser();

  Future<Either<DatabaseError, bool>> faqUser();

  Future<Either<DatabaseError, bool>> changePasswordUser();

  Future<Either<NetworkError, User>> changeLanguage({LanguageEnum locale});

  Future<Either<DatabaseError, bool>> updateLanguage({LanguageEnum locale});

  Future<Either<NetworkError, String>> deleteUser();

  Future<Either<NetworkError,DeviceDetails>> storeToken();

  Future<Either<NetworkError,String>> tokenInvalid();
}
