import 'package:domain/model/user.dart';
import 'package:domain/usecase/user/get_current_usecase.dart';
import 'package:flutter_base/base/base_page_view_model.dart';
import 'package:flutter_base/utils/extensions/stream_extention.dart';
import 'package:flutter_base/utils/request_manager.dart';
import 'package:flutter_base/utils/resource.dart';
import 'package:rxdart/rxdart.dart';

/// ViewModel for the Splash Screen which provides data to the Splash Screen.
class SplashViewModel extends BasePageViewModel {
  final GetCurrentUserUseCase _getCurrentUserUseCase;
  final PublishSubject<GetCurrentUserUseCaseParams>
      _getCurrentUserRequestSubject = PublishSubject();
  final PublishSubject<Resource<User>> _currentUserResponse = PublishSubject();

  Stream<Resource<User>> get currentUser => _currentUserResponse.stream;

  SplashViewModel(this._getCurrentUserUseCase) {
    _getCurrentUserRequestSubject.listen((getCurrentUserUseCaseParams) {
      RequestManager(getCurrentUserUseCaseParams, createCall: () {
        return _getCurrentUserUseCase.execute(
            params: getCurrentUserUseCaseParams);
      }).asFlow().listen((event) async {
        await Future.delayed(Duration(seconds: 3));
        print('Status = ${event.status}');
        _currentUserResponse.add(event);
      });
    });
    getCurrentUser();
  }

  /// Fetch current user for navigation from splash page
  void getCurrentUser() {
    _getCurrentUserRequestSubject.add(
      GetCurrentUserUseCaseParams(),
    );
  }



  @override
  void dispose() {
    _getCurrentUserRequestSubject.close();
    _currentUserResponse.close();
    super.dispose();
  }
}
