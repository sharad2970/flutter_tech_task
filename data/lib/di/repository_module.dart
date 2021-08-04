import 'package:data/di/local_module.dart';
import 'package:data/di/network_module.dart';
import 'package:data/repository/buddy/buddy_repositrory_impl.dart';
import 'package:data/repository/contact/contact_repository_impl.dart';
import 'package:data/repository/contact_us/contact_us_repository_impl.dart';
import 'package:data/repository/discount/discount_page_repository_impl.dart';
import 'package:data/repository/home/home_repositrory_impl.dart';
import 'package:data/repository/knockout/knockout_repositrory_impl.dart';
import 'package:data/repository/knockout_details/knockout_details_repository_impl.dart';
import 'package:data/repository/league_details/league_details_repository_impl.dart';
import 'package:data/repository/leagues/leagues_repositrory_impl.dart';
import 'package:data/repository/orders/order_repository_impl.dart';
import 'package:data/repository/payment_invitations/payment_invitations_repositrory_impl.dart';
import 'package:data/repository/pitch_booking_multiple/pitch_booking_multiple_repository_impl.dart';
import 'package:data/repository/pitchbook/pitch_book_repository_impl.dart';
import 'package:data/repository/staticPage/faq_page_repository_impl.dart';
import 'package:data/repository/staticPage/static_page_repositrory_impl.dart';
import 'package:data/repository/user/user_repository_impl.dart';
import 'package:domain/repository/buddy/buddy_repository.dart';
import 'package:domain/repository/contact/contact_repository.dart';
import 'package:domain/repository/contact_us/contact_us_repository.dart';
import 'package:domain/repository/discount/discount_repository.dart';
import 'package:domain/repository/knockout/knockout_repository.dart';
import 'package:domain/repository/knockout_details/knockout_details_repository.dart';
import 'package:domain/repository/league_details/league_details_repository.dart';
import 'package:domain/repository/leagues/leagues_repository.dart';
import 'package:domain/repository/notifications/notification_page_repository.dart';
import 'package:domain/repository/orders/order_repository.dart';
import 'package:domain/repository/payment/payment_repository.dart';
import 'package:domain/repository/payment_invitations/payment_invitations_repository.dart';
import 'package:domain/repository/pitch_booking_multiple/pitch_booking_multiple_repository.dart';
import 'package:domain/repository/pitchbooking/pitch_book_repository.dart';
import 'package:domain/repository/staticPage/faq_page_repository.dart';
import 'package:domain/repository/staticPage/static_page_repository.dart';
import 'package:domain/repository/user/user_repository.dart';
import 'package:riverpod/riverpod.dart';
import 'package:domain/repository/home/home_repository.dart';

var userRepoProvider = Provider<UserRepository>(
  (ref) => UserRepositoryImpl(ref.read(userRemoteDSProvider),
      ref.read(userLocalDSProvider), ref.read(dioProvider)),
);

var buddyRepoProvider = Provider<BuddyRepository>(
  (ref) => BuddyRepositoryImpl(ref.read(buddyRemoteDSProvider),
      ref.read(userRepoProvider), ref.read(dioProvider)),
);

var orderRepoProvider = Provider<OrderRepository>(
  (ref) => OrderRepositoryImpl(ref.read(orderRemoteDSProvider),
      ref.read(userRepoProvider), ref.read(dioProvider)),
);

var orderdetaisRepoProvider = Provider<OrderRepository>(
  (ref) => OrderRepositoryImpl(ref.read(orderRemoteDSProvider),
      ref.read(userRepoProvider), ref.read(dioProvider)),
);

var contactRepoProvider = Provider<ContactRepository>(
  (ref) => ContactRepositoryImpl(ref.read(contactLocalDSProvider)),
);

/// initializing [pitchBookingRemoteDSProvider], [userRepoProvider], [dioProvider]
var bookPitchRepoProvider = Provider<PitchBookRepository>(
  (ref) => PitchBookRepositoryImpl(ref.read(pitchBookingRemoteDSProvider),
      ref.read(userRepoProvider), ref.read(dioProvider)),
);

/// initializing [pitchBookingRemoteDSProvider], [userRepoProvider], [dioProvider]
var updatePitchBookingRepoProvider = Provider<PitchBookingMultipleRepository>(
  (ref) => PitchBookingMultipleRepositoryImpl(
      ref.read(pitchBookingMultipleRemoteDSProvider),
      ref.read(userRepoProvider),
      ref.read(dioProvider)),
);

var staticPageRepoProvider = Provider<StaticPageRepository>(
  (ref) => StaticPageRepositoryImpl(ref.read(staticPageRemoteDSProvider),
      ref.read(userRepoProvider), ref.read(dioProvider)),
);

var paymentInvitationsRepoProvider = Provider<PaymentInvitationsRepository>(
  (ref) => PaymentInvitationsRepositoryImpl(
      ref.read(paymentInvitationsDSProvider),
      ref.read(userRepoProvider),
      ref.read(dioProvider)),
);

var discountRepoProvider = Provider<DiscountRepository>(
  (ref) => DiscountPageRepositoryImpl(ref.read(discountRemoteDSProvider),
      ref.read(userRepoProvider), ref.read(dioProvider)),
);

/// initializing [pitchBookingRemoteDSProvider], [userRepoProvider], [dioProvider]
var pitchBookingMultipleRepoProvider = Provider<PitchBookingMultipleRepository>(
  (ref) => PitchBookingMultipleRepositoryImpl(
      ref.read(pitchBookingMultipleRemoteDSProvider),
      ref.read(userRepoProvider),
      ref.read(dioProvider)),
);

var faqPageRepoProvider = Provider<FaqPageRepository>(
  (ref) => FaqPageRepositoryImpl(ref.read(faqPageRemoteDSProvider),
      ref.read(userRepoProvider), ref.read(dioProvider)),
);

var leagueRepoProvider = Provider<LeaguesRepository>(
  (ref) => LeaguesRepositoryImpl(ref.read(leagueRemoteDSProvider),
      ref.read(userRepoProvider), ref.read(dioProvider)),
);
var knockoutRepoProvider = Provider<KnockoutRepository>(
  (ref) => KnockoutRepositoryImpl(ref.read(knockoutRemoteDSProvider),
      ref.read(userRepoProvider), ref.read(dioProvider)),
);

var contactUsRepoProvider = Provider<ContactUsRepository>(
  (ref) => ContactUsRepositoryImpl(ref.read(contactUsRemoteDSProvider),
      ref.read(userRepoProvider), ref.read(dioProvider)),
);

var knockoutDetailRepoProvider = Provider<KnockoutDetailRepository>(
  (ref) => KnockoutDetailsRepositoryImpl(
      ref.read(knockoutDetailsRemoteDSProvider),
      ref.read(userRepoProvider),
      ref.read(dioProvider)),
);

var leagueDetailRepoProvider = Provider<LeagueDetailRepository>(
  (ref) => LeagueDetailsRepositoryImpl(ref.read(leagueDetailsRemoteDSProvider),
      ref.read(userRepoProvider), ref.read(dioProvider)),
);

var homeRepoProvider = Provider<HomeRepository>(
      (ref) => HomeRepositoryImpl(ref.read(homeRemoteDSProvider),
      ref.read(userRepoProvider), ref.read(dioProvider)),
);