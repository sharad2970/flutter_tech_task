import 'package:data/entity/remote/staticPage/faq_page_response_entity.dart';
import 'package:data/network/rest/api_service.dart';
import 'package:data/source/staticPage/faq_data_source.dart';
import 'package:retrofit/dio.dart';

class FaqPageRemoteDSImpl extends FaqPageRemoteDS {
  final ApiService _apiService;

  FaqPageRemoteDSImpl(this._apiService);

  @override
  Future<HttpResponse<FaqPageResponseEntity>> getFaqPageInfo(
      String language) async {
    Map<String, dynamic> body = Map<String, dynamic>();
    body['language'] = language;
    return _apiService.faqPageApiCall(body: body);
  }
}
