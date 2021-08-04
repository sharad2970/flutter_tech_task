import 'package:data/entity/remote/knockout/knockout_list_response_entity.dart';
import 'package:data/entity/remote/knokcout_detail/knockout_detail_response_entity.dart';
import 'package:data/network/rest/api_service.dart';
import 'package:data/source/knockout_detail/knockout_detail_data_source.dart';
import 'package:data/source/user/user_data_sources.dart';
import 'package:retrofit/dio.dart';

class KnockoutDetailRemoteDSImpl extends KnockoutDetailRemoteDS {
  final ApiService _apiService;
  final UserLocalDS _userLocalDS;

  KnockoutDetailRemoteDSImpl(this._apiService, this._userLocalDS);

  @override
  Future<HttpResponse<KnockoutDetailResponseEntity>> getKnockoutDetail(
      {String knockoutId}) {
    Map<String, dynamic> body = Map<String, dynamic>();
    body['knockout_id'] = knockoutId;
    return _apiService.getKnockoutDetail(body: body);
  }
}
