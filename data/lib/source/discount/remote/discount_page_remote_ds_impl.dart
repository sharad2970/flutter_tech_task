import 'package:data/entity/remote/discount/discount_page_response_entity.dart';
import 'package:data/network/rest/api_service.dart';
import 'package:data/source/discount/discount_data_source.dart';
import 'package:data/source/user/user_data_sources.dart';
import 'package:retrofit/dio.dart';

class DiscountPageRemoteDsImpl extends DiscountPageRemoteDS {
  final ApiService _apiService;
  UserLocalDS _userLocalDS;

  DiscountPageRemoteDsImpl(this._apiService, this._userLocalDS);

  @override
  Future<HttpResponse<DiscountPageResponseEntity>> getDiscountInfoList(
      String lang) async {
    Map<String, dynamic> body = Map<String, dynamic>();
    body['lang'] = lang;
    return _apiService.getDiscount(body: body);
  }
}
