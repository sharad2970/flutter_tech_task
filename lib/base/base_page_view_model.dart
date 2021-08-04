import 'package:domain/error/goal_one_error.dart';
import 'package:domain/model/user.dart';
import 'package:domain/usecase/user/listen_current_user_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_base/base/base_view_model.dart';
import 'package:flutter_base/di/usecases/user_use_cases.dart';
import 'package:flutter_base/main/navigation/route_paths.dart';
import 'package:flutter_base/utils/request_manager.dart';
import 'package:flutter_base/utils/resource.dart';
import 'package:rxdart/rxdart.dart';

class BasePageViewModel extends BaseViewModel {
  PublishSubject<GoalOneAppError> _error = PublishSubject<GoalOneAppError>();
  PublishSubject<String> _toast = PublishSubject<String>();
  ListenCurrentUserUseCase getCurrentUserUseCase;
  final PublishSubject<ListenCurrentUserUseCaseParams>
      _getCurrentUserRequestSubject = PublishSubject();
  final PublishSubject<Resource<Stream<User>>> _currentUserResponse =
      PublishSubject();

  Stream<Resource<Stream<User>>> get currentUserStream =>
      _currentUserResponse.stream;

  BasePageViewModel() {
    _getCurrentUserRequestSubject.listen((getCurrentUserUseCaseParams) {
      getCurrentUserUseCase =
          ProviderContainer().read(listenCurrentUserUseCaseProvider);
      RequestManager(getCurrentUserUseCaseParams, createCall: () {
        return getCurrentUserUseCase.execute(
            params: getCurrentUserUseCaseParams);
      }).asFlow().listen((event) {
        _currentUserResponse.add(event);
      });
    });
  }

  Stream<GoalOneAppError> get error => _error.stream;

  Stream<String> get toast => _toast.stream;

  void showToastWithError(GoalOneAppError error) {
    _error.sink.add(error);
  }

  void showToastWithString(String message) {
    _toast.sink.add(message);
  }

  void getCurrentUserStream() {
    _getCurrentUserRequestSubject.add(
      ListenCurrentUserUseCaseParams(),
    );
  }

  void gotoHome(context){
    Navigator.pushNamedAndRemoveUntil(
      context,
      RoutePaths.PitchBooking,
      ModalRoute.withName(
        RoutePaths.Home,
      ),
    );
  }

  @override
  void dispose() {
    _error.close();
    _toast.close();
    _getCurrentUserRequestSubject.close();
    _currentUserResponse.close();
    super.dispose();
  }
}
