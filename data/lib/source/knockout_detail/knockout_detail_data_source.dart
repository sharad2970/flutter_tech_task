
import 'package:data/entity/remote/knokcout_detail/knockout_detail_response_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:retrofit/retrofit.dart';

abstract class KnockoutDetailRemoteDS {
  Future<HttpResponse<KnockoutDetailResponseEntity>> getKnockoutDetail({
    @required String knockoutId
  });
}