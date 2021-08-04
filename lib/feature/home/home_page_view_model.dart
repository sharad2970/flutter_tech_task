import 'package:domain/model/leagues/league_list_info.dart';
import 'package:domain/usecase/leagues/leagues_use_case.dart';
import 'package:flutter_base/base/base_page_view_model.dart';
import 'package:flutter_base/utils/extensions/stream_extention.dart';
import 'package:flutter_base/utils/request_manager.dart';
import 'package:flutter_base/utils/resource.dart';
import 'package:flutter_base/utils/status.dart';
import 'package:rxdart/rxdart.dart';
import 'package:domain/model/popular_movies.dart';
import 'package:domain/usecase/home/home_use_case.dart';

class HomePageViewModel extends BasePageViewModel {
  final HomeUseCase _homeUseCase;

  final PublishSubject<HomeUseCaseParams> _moviesRequest = PublishSubject();
  final BehaviorSubject<Resource<List<PopularMovies>>> _moviesResponse =
      BehaviorSubject.seeded(Resource.loading(data: []));

  Stream<Resource<List<PopularMovies>>> get movieResponseStream => _moviesResponse.stream;


  HomePageViewModel(this._homeUseCase) {
    _moviesRequest.listen((value) {
      RequestManager(value,
              createCall: () => _homeUseCase.execute(params: value))
          .asFlow()
          .listen((event){
          _moviesResponse.safeAdd(event);
      });
    });
    getLeagues();
  }




  void getLeagues() {
    _moviesRequest.safeAdd(HomeUseCaseParams());
  }

  @override
  void dispose() {
    _moviesResponse.close();
    _moviesRequest.close();
    super.dispose();
  }

  void updateSelection(int oldIndex, int newIndex, List<PopularMovies> data) {
    if(oldIndex < newIndex){
      newIndex -= 1;
    }
    List<PopularMovies> newList = _moviesResponse.value.data;
    final PopularMovies item = newList.removeAt(oldIndex);
    newList.insert(newIndex, item);
    _moviesResponse.safeAdd(Resource.success(data: newList));
  }
}
