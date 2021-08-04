import 'package:data/entity/remote/staticPage/faq_page_response_entity.dart';
import 'package:retrofit/retrofit.dart';

abstract class FaqPageRemoteDS {
  Future<HttpResponse<FaqPageResponseEntity>> getFaqPageInfo(String language);
}
