import 'package:domain/usecase/user/logout_usecase.dart';
import 'package:flutter_base/base/base_page_view_model.dart';
import 'package:flutter_base/utils/extensions/stream_extention.dart';
import 'package:flutter_base/utils/request_manager.dart';
import 'package:flutter_base/utils/resource.dart';
import 'package:rxdart/rxdart.dart';

class SettingsPageViewModel extends BasePageViewModel {
  LogoutUseCase _logoutUseCase;

  PublishSubject<LogoutUseCaseParams> _logoutRequest = PublishSubject();

  PublishSubject<Resource<bool>> _logoutResponse = PublishSubject();

  Stream<Resource<bool>> get logoutStream => _logoutResponse.stream;

  SettingsPageViewModel(this._logoutUseCase) {
    _logoutRequest.listen((value) {
      RequestManager(value,
              createCall: () => _logoutUseCase.execute(params: value))
          .asFlow()
          .listen((event) {
        _logoutResponse.safeAdd(event);
      });
    });
  }

  void logoutUser() {
    _logoutRequest.safeAdd(LogoutUseCaseParams());
  }

  @override
  void dispose() {
    _logoutRequest.close();
    _logoutResponse.close();
    super.dispose();
  }
}
