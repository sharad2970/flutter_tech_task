import 'package:data/di/repository_module.dart';
import 'package:domain/usecase/user/change_password_usecase.dart';
import 'package:domain/usecase/user/create_password_usecase.dart';
import 'package:domain/usecase/user/delete_account_usecase.dart';
import 'package:domain/usecase/user/edit_user_profile_usecase.dart';
import 'package:domain/usecase/user/faq_usecase.dart';
import 'package:domain/usecase/user/forgot_password_usecase.dart';
import 'package:domain/usecase/user/get_current_usecase.dart';
import 'package:domain/usecase/user/image_upload_usecase.dart';
import 'package:domain/usecase/user/listen_current_user_usecase.dart';
import 'package:domain/usecase/user/login_usecase.dart';
import 'package:domain/usecase/user/logout_usecase.dart';
import 'package:domain/usecase/user/registration_usecase.dart';
import 'package:domain/usecase/user/reset_password_use_case.dart';
import 'package:domain/usecase/user/token_invalid_usecase.dart';
import 'package:domain/usecase/user/update_language_usecase.dart';
import 'package:domain/usecase/user/user_profile_image_usecase.dart';
import 'package:domain/usecase/user/verify_otp.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provide dependency of ListenCurrentUserUseCase.
final listenCurrentUserUseCaseProvider =
    Provider.autoDispose<ListenCurrentUserUseCase>(
  (ref) => ListenCurrentUserUseCase(
    ref.read(userRepoProvider),
  ),
);

/// Provide dependency of GetCurrentUserUseCase.
final getCurrentUserUseCaseProvider =
    Provider.autoDispose<GetCurrentUserUseCase>(
  (ref) => GetCurrentUserUseCase(
    ref.read(userRepoProvider),
  ),
);

final registerUserUseCaseProvider = Provider.autoDispose<RegistrationUseCase>(
  (ref) => RegistrationUseCase(
    ref.read(userRepoProvider),
  ),
);

final userProfileUserUseCaseProvider = Provider.autoDispose<UserProfileUseCase>(
  (ref) => UserProfileUseCase(
    ref.read(userRepoProvider),
  ),
);
final userImageUploadUseCaseProvider = Provider.autoDispose<ImageUploadUseCase>(
  (ref) => ImageUploadUseCase(
    ref.read(userRepoProvider),
  ),
);
final userProfileImageRemoveUseCaseProvider =
    Provider.autoDispose<UserProfileImageUseCase>(
  (ref) => UserProfileImageUseCase(
    ref.read(userRepoProvider),
  ),
);

final createPasswordUseCaseProvider =
    Provider.autoDispose<CreatePasswordUseCase>(
  (ref) => CreatePasswordUseCase(
    ref.read(userRepoProvider),
  ),
);

final changePasswordUseCaseProvider =
    Provider.autoDispose<ChangePasswordUseCase>(
  (ref) => ChangePasswordUseCase(
    ref.read(userRepoProvider),
  ),
);

final faqUseCaseProvider = Provider.autoDispose<FAQUseCase>(
  (ref) => FAQUseCase(
    ref.read(userRepoProvider),
  ),
);

final resetPasswordUseCaseProvider = Provider.autoDispose<ResetPasswordUseCase>(
  (ref) => ResetPasswordUseCase(
    ref.read(userRepoProvider),
  ),
);

final forgotPasswordUseCaseProvider = Provider.autoDispose<ForgotPassUseCase>(
  (ref) => ForgotPassUseCase(
    ref.read(userRepoProvider),
  ),
);

final loginUserUseCaseProvider = Provider.autoDispose<LoginUseCase>(
  (ref) => LoginUseCase(
    ref.read(userRepoProvider),
  ),
);

final verifyOtpUseCaseProvider = Provider.autoDispose<VerifyOtpUseCase>(
  (ref) => VerifyOtpUseCase(
    ref.read(userRepoProvider),
  ),
);

final logoutUseCaseProvider = Provider.autoDispose<LogoutUseCase>(
  (ref) => LogoutUseCase(
    ref.read(userRepoProvider),
  ),
);

final languageSelectionUseCaseProvider =
    Provider.autoDispose<UpdateLanguageUsecase>(
  (ref) => UpdateLanguageUsecase(
    ref.read(userRepoProvider),
  ),
);
final deleteAccountUseCaseProvider = Provider.autoDispose<DeleteAccountUseCase>(
  (ref) => DeleteAccountUseCase(
    ref.read(userRepoProvider),
  ),
);

final invalidTokenUseCaseProvider = Provider.autoDispose<TokenInvalidUseCase>(
      (ref) => TokenInvalidUseCase(
    ref.read(userRepoProvider),
  ),
);
