import 'package:data/entity/remote/staticPage/static_page_response_entity.dart';
import 'package:data/network/rest/api_service.dart';
import 'package:data/source/staticPage/static_data_source.dart';
import 'package:retrofit/dio.dart';

class StaticPageRemoteDSImpl extends StaticPageRemoteDS {
  final ApiService _apiService;

  StaticPageRemoteDSImpl(this._apiService);

  @override
  Future<HttpResponse<StaticPageResponseEntity>> getStaticPageInfo(
      String slug) async {
    Map<String, dynamic> body = Map<String, dynamic>();
    body['slug'] = slug;
    body['language'] = "en";
    return _apiService.staticPageApiCall(body: body);
  }

}
