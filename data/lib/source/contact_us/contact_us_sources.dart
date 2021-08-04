import 'package:data/entity/remote/contact_us/contact_us_response.dart';
import 'package:retrofit/retrofit.dart';

abstract class ContactUsSources {
  Future<HttpResponse<ContactUsResponse>> contactUsApiCall(
      { String category, String query});
}
