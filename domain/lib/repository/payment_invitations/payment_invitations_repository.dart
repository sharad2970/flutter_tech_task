import 'package:dartz/dartz.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/payment_invitations/payment_invitations.dart';

abstract class PaymentInvitationsRepository {
  Future<Either<NetworkError, PaymentInvitations>> getPaymentInvitationList(
      {String search, int skip, int take});
}
