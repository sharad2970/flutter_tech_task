import 'package:data/entity/local/user_db_entity.dart';
import 'package:data/entity/remote/contact_us/contact_us_request.dart';
import 'package:data/entity/remote/contact_us/contact_us_response.dart';
import 'package:data/network/rest/api_service.dart';
import 'package:data/source/contact_us/contact_us_sources.dart';
import 'package:data/source/user/user_data_sources.dart';
import 'package:domain/model/user.dart';
import 'package:retrofit/retrofit.dart';

class ContactUSDsImpl extends ContactUsSources {
  final ApiService _apiService;
  final UserLocalDS _userLocalDS;

  ContactUSDsImpl(this._apiService,this._userLocalDS);

  @override
  Future<HttpResponse<ContactUsResponse>> contactUsApiCall(
      { String category, String query}) async{
    UserDBEntity userDBEntity = await _userLocalDS.getCurrentUser();
    User user = userDBEntity.transform();
    return _apiService.contactUsApiCall(

        request: ContactUsRequest(
            playerId: user.id.toString(), category: category, query: query));
  }
}
