import 'package:dartz/dartz.dart';
import 'package:domain/constants/enum/static_page_enum.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/staticPage/static_page_info.dart';

abstract class StaticPageRepository {
  Future<Either<NetworkError, StaticPageInfo>> getStaticPageInfo(
      StaticPageEnum staticPageEnum);
}
