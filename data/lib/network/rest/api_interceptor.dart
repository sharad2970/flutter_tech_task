import 'package:data/network/rest/api_service.dart';
import 'package:dio/dio.dart';
import 'package:domain/model/user.dart';
import 'package:domain/repository/user/user_repository.dart';

class ApiInterceptor extends InterceptorsWrapper {
  final UserRepository _userRepository;
  final Dio _previousDio;
  ApiService apiService;

  ApiInterceptor(this._userRepository, this._previousDio) {
    Dio newDio = Dio(_previousDio.options);
    newDio.interceptors.add(_previousDio.interceptors.first);
    apiService = ApiService(
      newDio,
    );
  }

  @override
  Future onRequest(RequestOptions options) async {
    var userEither = await _userRepository.getCurrentUser();
    User user = userEither.fold((l) => null, (r) {
      return r;
    });
    options.headers.putIfAbsent("Authorization", () => "Bearer ${user?.token}");
    return options;
  }

  @override
  Future onError(DioError dioError) async {
    print("onError");

    // if (dioError.response?.statusCode == 401) {
    //
    //   RequestOptions options = dioError.response.request;
    //
    //   final currentUserEither = await _userRepository.getCurrentUser();
    //   User user = currentUserEither.fold((l) => null, (r) => r);
    //
    //   if (user == null) {
    //     throw Exception();
    //   }
    //
    //   // Refresh Token
    //   _previousDio.interceptors.requestLock.lock();
    //   _previousDio.interceptors.responseLock.lock();
    //
    //   var refreshResponse = await safeApiCall(apiService.renewToken(
    //     refreshToken: user.refreshToken,
    //     clientId: NetworkProperties.clientId,
    //     clientSecret: NetworkProperties.clientSecret,
    //   ));
    //   Either<NetworkError, User> transformedResponse =
    //       refreshResponse.fold((l) => Left(l), (r) {
    //     return Right(
    //       r.data.transform(),
    //     );
    //   });
    //   User newUser = transformedResponse.fold((l) => null, (r) => r);
    //
    //   if (newUser != null && newUser.token.isNotEmpty) {
    //     user.token = newUser.token;
    //     user.refreshToken = newUser.refreshToken;
    //     await _userRepository.saveUser(user);
    //     options.headers["Authorization"] = "Bearer ${user?.token}";
    //     _previousDio.interceptors.requestLock.unlock();
    //     _previousDio.interceptors.responseLock.unlock();
    //     return _previousDio.request(options.path, options: options);
    //   } else {
    //     _previousDio.interceptors.requestLock.unlock();
    //     _previousDio.interceptors.responseLock.unlock();
    //     return super.onError(dioError);
    //   }
    // }
    return super.onError(dioError);
  }
}
