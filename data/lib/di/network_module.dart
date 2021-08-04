import 'package:data/di/local_module.dart';
import 'package:data/network/rest/api_service.dart';
import 'package:data/network/rest/network_properties.dart';
import 'package:data/source/buddy/buddy_data_source.dart';
import 'package:data/source/buddy/remote/buddy_remote_ds_impl.dart';
import 'package:data/source/contact_us/contact_us_sources.dart';
import 'package:data/source/contact_us/remote/contact_us_ds_impl.dart';
import 'package:data/source/discount/discount_data_source.dart';
import 'package:data/source/discount/remote/discount_page_remote_ds_impl.dart';
import 'package:data/source/home/home_data_source.dart';
import 'package:data/source/home/remote/home_remote_ds_impl.dart';
import 'package:data/source/knockout/knockout_data_source.dart';
import 'package:data/source/knockout/remote/knockout_remote_ds_impl.dart';
import 'package:data/source/knockout_detail/knockout_detail_data_source.dart';
import 'package:data/source/knockout_detail/remote/knockout_detail_remote_ds_impl.dart';
import 'package:data/source/league_detail/league_detail_data_source.dart';
import 'package:data/source/league_detail/remote/league_detail_remote_ds_impl.dart';
import 'package:data/source/leagues/leagues_data_source.dart';
import 'package:data/source/leagues/remote/leagues_remote_ds_impl.dart';
import 'package:data/source/order/order_data_source.dart';
import 'package:data/source/order/remote/order_remote_ds_impl.dart';
import 'package:data/source/payment_invitations/payment_invitations_data_source.dart';
import 'package:data/source/payment_invitations/remote/payment_invitations_remote_ds_impl.dart';
import 'package:data/source/pitch_booking_multiple/pitch_booking_multiple_data_source.dart';
import 'package:data/source/pitch_booking_multiple/remote/pitch_booking_multiple_remote_ds_impl.dart';
import 'package:data/source/pitchbook/pitch_book_data_source.dart';
import 'package:data/source/pitchbook/remote/pitch_book_remote_ds_impl.dart';
import 'package:data/source/staticPage/faq_data_source.dart';
import 'package:data/source/staticPage/remote/faq_page_remote_ds_impl.dart';
import 'package:data/source/staticPage/remote/static_page_remote_ds_impl.dart';
import 'package:data/source/staticPage/static_data_source.dart';
import 'package:data/source/user/remote/user_remote_ds_impl.dart';
import 'package:data/source/user/user_data_sources.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod/riverpod.dart';

final baseOptions = Provider<BaseOptions>(
    (ref) => BaseOptions(baseUrl: NetworkProperties.BASE_URL));

final prettyDioLoggerProvider = Provider<PrettyDioLogger>(
  (ref) => PrettyDioLogger(
    request: true,
    requestBody: true,
    requestHeader: true,
    responseBody: true,
    responseHeader: true,
    logPrint: (log) {
      return debugPrint(log);
    },
  ),
);

final dioProvider = Provider<Dio>(
  (ref) {
    Dio dio = Dio(ref.read(baseOptions));
    dio.interceptors.add(
      ref.read(prettyDioLoggerProvider),
    );
    return dio;
  },
);

final apiServiceProvider = Provider<ApiService>(
  (ref) =>
      ApiService(ref.read(dioProvider), baseUrl: NetworkProperties.BASE_URL),
);

final userRemoteDSProvider = Provider<UserRemoteDS>((ref) => UserRemoteDSImpl(
    ref.read(apiServiceProvider), ref.read(deviceInfoHelperProvider)));

final buddyRemoteDSProvider = Provider<BuddyRemoteDS>((ref) =>
    BuddyRemoteDSImpl(
        ref.read(apiServiceProvider), ref.read(userLocalDSProvider)));

final orderRemoteDSProvider = Provider<OrderRemoteDS>((ref) =>
    OrderRemoteDSImpl(
        ref.read(apiServiceProvider), ref.read(userLocalDSProvider)));

final pitchBookingRemoteDSProvider = Provider<PitchBookingRemoteDS>((ref) =>
    PitchBookRemoteDSImpl(
        ref.read(apiServiceProvider), ref.read(userLocalDSProvider)));

final pitchBookingMultipleRemoteDSProvider =
    Provider<PitchBookingMultipleRemoteDS>((ref) =>
        PitchBookingMultipleRemoteDSImpl(
            ref.read(apiServiceProvider), ref.read(userLocalDSProvider)));

final staticPageRemoteDSProvider = Provider<StaticPageRemoteDS>(
    (ref) => StaticPageRemoteDSImpl(ref.read(apiServiceProvider)));

final paymentInvitationsDSProvider = Provider<PaymentInvitationsRemoteDS>(
    (ref) => PaymentInvitationsRemoteDSImpl(
        ref.read(apiServiceProvider), ref.read(userLocalDSProvider)));

final discountRemoteDSProvider = Provider<DiscountPageRemoteDS>((ref) =>
    DiscountPageRemoteDsImpl(
        ref.read(apiServiceProvider), ref.read(userLocalDSProvider)));

final faqPageRemoteDSProvider = Provider<FaqPageRemoteDS>(
    (ref) => FaqPageRemoteDSImpl(ref.read(apiServiceProvider)));

final contactUsRemoteDSProvider = Provider<ContactUsSources>((ref) =>
    ContactUSDsImpl(
        ref.read(apiServiceProvider), ref.read(userLocalDSProvider)));

final leagueRemoteDSProvider = Provider<LeaguesRemoteDS>((ref) =>
    LeaguesRemoteDSImpl(
        ref.read(apiServiceProvider), ref.read(userLocalDSProvider)));

final knockoutRemoteDSProvider = Provider<KnockoutRemoteDS>((ref) =>
    KnockoutRemoteDSImpl(
        ref.read(apiServiceProvider), ref.read(userLocalDSProvider)));

final knockoutDetailsRemoteDSProvider = Provider<KnockoutDetailRemoteDS>(
    (ref) => KnockoutDetailRemoteDSImpl(
        ref.read(apiServiceProvider), ref.read(userLocalDSProvider)));

final leagueDetailsRemoteDSProvider = Provider<LeagueDetailRemoteDS>((ref) =>
    LeagueDetailRemoteDSImpl(
        ref.read(apiServiceProvider), ref.read(userLocalDSProvider)));

final homeRemoteDSProvider = Provider<HomeRemoteDS>((ref) =>
    HomeRemoteDSImpl(
        ref.read(apiServiceProvider), ref.read(userLocalDSProvider)));