import 'package:dartz/dartz.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/staticPage/faq_page_info.dart';

abstract class FaqPageRepository {
  Future<Either<NetworkError, List<Faqs>>> getFaqPageInfo(String language);
}
