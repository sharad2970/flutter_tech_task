import 'package:data/entity/remote/staticPage/static_page_response_entity.dart';
import 'package:retrofit/retrofit.dart';

abstract class StaticPageRemoteDS {
  Future<HttpResponse<StaticPageResponseEntity>> getStaticPageInfo(
      String string);
}

