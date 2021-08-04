import 'dart:io';

import 'package:data/entity/remote/notifications/notification_response_entity.dart';
import 'package:data/entity/remote/notifications/token_invaild_request_entity.dart';
import 'package:data/entity/remote/user/change_password_request.dart';
import 'package:data/entity/remote/user/change_password_response.dart';
import 'package:data/entity/remote/user/create_password_response.dart';
import 'package:data/entity/remote/user/delete_account_response.dart';
import 'package:data/entity/remote/user/forgot_password_request.dart';
import 'package:data/entity/remote/user/forgot_password_response.dart';
import 'package:data/entity/remote/user/login_request.dart';
import 'package:data/entity/remote/user/registration_request.dart';
import 'package:data/entity/remote/user/reset_password_request.dart';
import 'package:data/entity/remote/user/reset_password_response.dart';
import 'package:data/entity/remote/user/token_invalid_response.dart';
import 'package:data/entity/remote/user/user_profile_request.dart';
import 'package:data/entity/remote/user/user_response_entity.dart';
import 'package:data/entity/remote/user/verify_otp_request.dart';
import 'package:data/entity/remote/user/verify_otp_response.dart';
import 'package:data/network/rest/api_service.dart';
import 'package:data/source/user/user_data_sources.dart';
import 'package:device_info/device_info.dart';
import 'package:dio/dio.dart';
import 'package:domain/constants/enum/language_enum.dart';
import 'package:domain/model/notifications/device_details.dart';
import 'package:domain/model/notifications/device_info_helper.dart';
import 'package:retrofit/retrofit.dart';

class UserRemoteDSImpl extends UserRemoteDS {
  final ApiService _apiService;
  final DeviceInfoHelper _deviceInfo;

  UserRemoteDSImpl(this._apiService, this._deviceInfo);

  Future<DeviceDetails> getDeviceDetails() async {
    if (Platform.isAndroid) {
      AndroidDeviceInfo deviceData = await _deviceInfo.getAndroidDeviceInfo();
      return deviceData.mapToDeviceDetails();
    } else if (Platform.isIOS) {
      IosDeviceInfo deviceData = await _deviceInfo.getIosDeviceDetails();
      return deviceData.mapToDeviceDetails();
    }
    return DeviceDetails();
  }

  @override
  Future<HttpResponse<UserResponseEntity>> loginWithEmail(
      {String email, String password}) {
    return _apiService.loginWithEmail(
        data: LoginRequest(email: email, password: password));
  }

  @override
  Future<HttpResponse<CreatePasswordResponse>> updateUserProfile({
    String firstName,
    String lastName,
    String email,
    String mobile,
    String dob,
    String countryCode,
  }) {
    return _apiService.updateUserprofile(
        data: UserProfileRequest(
      email: email,
      dob: dob,
      firstName: firstName,
      lastName: lastName,
      mobile: mobile,
      countryCode: countryCode,
    ));
  }

  @override
  Future<HttpResponse<CreatePasswordResponse>> uploadUserProfile(
      {File file, String id}) async {
    String fileName = file.path.split('/').last;

    FormData formData = FormData.fromMap({
      "id": id,
      "avatar": await MultipartFile.fromFile(file.path, filename: fileName),
    });

    return _apiService.uploadUserProfile(body: formData);
  }

  @override
  Future<HttpResponse<CreatePasswordResponse>> removeUserImage({String id}) {
    Map<String, dynamic> body = Map<String, dynamic>();

    body['id'] = id;

    return _apiService.removeUserProfileImage(body: body);
  }

  @override
  Future<HttpResponse<CreatePasswordResponse>> registerUser(
      {String firstName,
      String lastName,
      String email,
      String mobile,
      String dob,
      String password,
      String countryCode,
      String lang}) {
    return _apiService.registerUser(
        data: RegistrationRequest(
            email: email,
            dob: dob,
            firstName: firstName,
            lastName: lastName,
            mobile: mobile,
            password: password,
            countryCode: countryCode,
            lang: lang));
  }

  @override
  Future<HttpResponse<ForgotPasswordResponse>> forgotPassword(
      {String email, String countryCode}) {
    return _apiService.forgotPassword(
        data: ForgotPasswordRequest(email: email, countryCode: countryCode));
  }

  @override
  Future<HttpResponse<VerifyOtpResponse>> verifyOtpApiCall({String code}) {
    return _apiService.verifyOtpApiCall(code: VerifyOtpRequest(code: code));
  }

  @override
  Future<HttpResponse<ResetPasswordResponse>> resetPasswordApiCall(
      {String requestedId, String password, String passwordConfirmation}) {
    return _apiService.resetPasswordApiCall(
        request: ResetPasswordRequest(
            requestedId: requestedId,
            password: password,
            passwordConfirmation: passwordConfirmation));
  }

  @override
  Future<HttpResponse<ChangePasswordResponse>> changePasswordApiCall(
      {String currentPassword,
      String newPassword,
      String passwordConfirmation}) {
    return _apiService.changePasswordApiCall(
        request: ChangePasswordRequest(
            currentPassword: currentPassword,
            newPassword: newPassword,
            passwordConfirmation: passwordConfirmation));
  }

  @override
  Future<HttpResponse<DeleteAccountResponse>> deleteAccountApiCall() {
    return _apiService.deleteAccountApiCall();
  }

  @override
  Future<HttpResponse<CreatePasswordResponse>> changeLanguage(
      {LanguageEnum locale}) {
    Map<String, dynamic> body = Map<String, dynamic>();
    body['lang'] = locale.toString();

    return _apiService.updateUserLanguage(body: body);
  }

  @override
  Future<HttpResponse<NotificationResponseEntity>> storeTokenApiCall() {
    return _apiService.storeToken();
  }

  @override
  Future<HttpResponse<TokenInvalidResponse>> tokenInvalidApiCall() async {
    DeviceDetails deviceDetails = await getDeviceDetails();

    return _apiService.tokenInvalidApiCall(
        request: TokenInvalidRequestEntity(deviceId: deviceDetails.deviceId));
  }
}
