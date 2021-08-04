import 'package:data/entity/remote/discount/discount_page_response_entity.dart';
import 'package:retrofit/retrofit.dart';

abstract class DiscountPageRemoteDS {
  Future<HttpResponse<DiscountPageResponseEntity>> getDiscountInfoList(String lang);
}
