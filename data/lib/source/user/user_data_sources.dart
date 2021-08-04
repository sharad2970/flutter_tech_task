import 'dart:io';

import 'package:data/entity/local/user_db_entity.dart';
import 'package:data/entity/remote/notifications/notification_response_entity.dart';
import 'package:data/entity/remote/user/change_password_response.dart';
import 'package:data/entity/remote/user/create_password_response.dart';
import 'package:data/entity/remote/user/delete_account_response.dart';
import 'package:data/entity/remote/user/forgot_password_response.dart';
import 'package:data/entity/remote/user/reset_password_response.dart';
import 'package:data/entity/remote/user/token_invalid_response.dart';
import 'package:data/entity/remote/user/user_response_entity.dart';
import 'package:data/entity/remote/user/verify_otp_response.dart';
import 'package:domain/constants/enum/language_enum.dart';
import 'package:flutter/widgets.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/retrofit.dart';

abstract class UserRemoteDS {
  Future<HttpResponse<UserResponseEntity>> loginWithEmail(
      {@required String email, @required String password});

  /// register new user
  Future<HttpResponse<CreatePasswordResponse>> registerUser(
      {String firstName,
      String lastName,
      String email,
      String mobile,
      String dob,
      String password,
      String countryCode,
      String lang});

  Future<HttpResponse<CreatePasswordResponse>> updateUserProfile({
    String firstName,
    String lastName,
    String email,
    String mobile,
    String dob,
    String countryCode,
  });

  Future<HttpResponse<CreatePasswordResponse>> uploadUserProfile(
      {File file, String id});

  Future<HttpResponse<CreatePasswordResponse>> removeUserImage({String id});

  /// user remote data source call
  Future<HttpResponse<ForgotPasswordResponse>> forgotPassword(
      {String email, String countryCode});

  Future<HttpResponse<VerifyOtpResponse>> verifyOtpApiCall({String code});

  Future<HttpResponse<ResetPasswordResponse>> resetPasswordApiCall(
      {String requestedId, String password, String passwordConfirmation});

  Future<HttpResponse<ChangePasswordResponse>> changePasswordApiCall(
      {String currentPassword,
      String newPassword,
      String passwordConfirmation});

  Future<HttpResponse<DeleteAccountResponse>> deleteAccountApiCall();

  Future<HttpResponse<CreatePasswordResponse>> changeLanguage(
      {LanguageEnum locale});

  Future<HttpResponse<NotificationResponseEntity>> storeTokenApiCall();

  Future<HttpResponse<TokenInvalidResponse>> tokenInvalidApiCall();
}

abstract class UserLocalDS {
  Future<Stream<UserDBEntity>> listenCurrentUser();

  Future<UserDBEntity> getCurrentUser();

  Future<bool> saveCurrentUser(UserDBEntity userDBEntity);

  Future<bool> updateCurrentUser(UserDBEntity userDBEntity);

  Future<bool> removeUser();

  Future<bool> updateLanguage({LanguageEnum locale});
}
