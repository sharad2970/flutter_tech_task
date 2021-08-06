import 'package:data/entity/remote/bookings/booking_details_payment_response_entity.dart';
import 'package:data/entity/remote/bookings/booking_details_response_entity.dart';
import 'package:data/entity/remote/bookings/booking_list_response.dart';
import 'package:data/entity/remote/bookings/booking_pending_payments_entity.dart';
import 'package:data/entity/remote/bookings/cancel_booking_response_entity.dart';
import 'package:data/entity/remote/buddy/accept_buddy_response_entity.dart';
import 'package:data/entity/remote/buddy/add_buddy_response_entity.dart';
import 'package:data/entity/remote/buddy/buddy_friend_list_response_entity.dart';
import 'package:data/entity/remote/buddy/buddy_player_list_response_entity.dart';
import 'package:data/entity/remote/buddy/buddy_request_list_response_entity.dart';
import 'package:data/entity/remote/buddy/invite_contact_response_entity.dart';
import 'package:data/entity/remote/buddy/remove_buddy_response_entity.dart';
import 'package:data/entity/remote/contact_us/contact_us_request.dart';
import 'package:data/entity/remote/contact_us/contact_us_response.dart';
import 'package:data/entity/remote/discount/discount_page_response_entity.dart';
import 'package:data/entity/remote/home/popular_movies_response_entity.dart';
import 'package:data/entity/remote/invite_buddies/invite_buddies_request_entity.dart';
import 'package:data/entity/remote/invite_buddies/invite_buddies_response.dart';
import 'package:data/entity/remote/knockout/invite_knockout_buddies_request_entity.dart';
import 'package:data/entity/remote/knockout/knockout_create_team_response.dart';
import 'package:data/entity/remote/knockout/knockout_invitation_response.dart';
import 'package:data/entity/remote/knockout/knockout_list_response_entity.dart';
import 'package:data/entity/remote/knokcout_detail/knockout_detail_response_entity.dart';
import 'package:data/entity/remote/league_detail/league_detail_response_entity.dart';
import 'package:data/entity/remote/leagues/create_league_team_request_entity.dart';
import 'package:data/entity/remote/leagues/create_league_team_response.dart';
import 'package:data/entity/remote/leagues/league_list_request_entity.dart';
import 'package:data/entity/remote/leagues/league_list_response_entity.dart';
import 'package:data/entity/remote/leagues/league_table_request_entity.dart';
import 'package:data/entity/remote/leagues/league_table_response.dart';
import 'package:data/entity/remote/leagues/league_teams_request.dart';
import 'package:data/entity/remote/leagues/league_teams_response.dart';
import 'package:data/entity/remote/leagues/rules_and_regulations_request.dart';
import 'package:data/entity/remote/leagues/rules_and_regulations_response.dart';
import 'package:data/entity/remote/leagues/upcoming_fixture_request_entity.dart';
import 'package:data/entity/remote/leagues/upcoming_fixtures_response.dart';
import 'package:data/entity/remote/notifications/notification_list_response_entity.dart';
import 'package:data/entity/remote/notifications/notification_request_entity.dart';
import 'package:data/entity/remote/notifications/notification_response_entity.dart';
import 'package:data/entity/remote/notifications/token_invaild_request_entity.dart';
import 'package:data/entity/remote/payment/order_details_request_entity.dart';
import 'package:data/entity/remote/payment/order_details_response.dart';
import 'package:data/entity/remote/payment/payment_methods_response.dart';
import 'package:data/entity/remote/payment/payment_status_request_entity.dart';
import 'package:data/entity/remote/payment/payment_status_response.dart';
import 'package:data/entity/remote/payment_invitations/payment_invitations_request.dart';
import 'package:data/entity/remote/payment_invitations/payment_invitations_response.dart';
import 'package:data/entity/remote/pitch_booking_multiple/pitch_booking_count_request.dart';
import 'package:data/entity/remote/pitch_booking_multiple/pitch_booking_count_response.dart';
import 'package:data/entity/remote/pitch_booking_multiple/update_pitch_booking_request.dart';
import 'package:data/entity/remote/pitch_booking_multiple/update_pitch_booking_response.dart';
import 'package:data/entity/remote/pitchbook/available_pitch_request_entity.dart';
import 'package:data/entity/remote/pitchbook/available_pitches_response.dart';
import 'package:data/entity/remote/pitchbook/book_pitch_request_entity.dart';
import 'package:data/entity/remote/pitchbook/book_pitch_response.dart';
import 'package:data/entity/remote/pitchbook/pitch_booking_bottles_list_response.dart';
import 'package:data/entity/remote/pitchbook/update_split_payment_status_request.dart';
import 'package:data/entity/remote/pitchbook/update_split_payment_status_response.dart';
import 'package:data/entity/remote/staticPage/faq_page_response_entity.dart';
import 'package:data/entity/remote/staticPage/static_page_response_entity.dart';
import 'package:data/entity/remote/user/change_password_request.dart';
import 'package:data/entity/remote/user/change_password_response.dart';
import 'package:data/entity/remote/user/create_password_response.dart';
import 'package:data/entity/remote/user/delete_account_response.dart';
import 'package:data/entity/remote/user/forgot_password_request.dart';
import 'package:data/entity/remote/user/forgot_password_response.dart';
import 'package:data/entity/remote/user/login_request.dart';
import 'package:data/entity/remote/user/registration_request.dart';
import 'package:data/entity/remote/user/reset_password_request.dart';
import 'package:data/entity/remote/user/reset_password_response.dart';
import 'package:data/entity/remote/user/token_invalid_response.dart';
import 'package:data/entity/remote/user/user_profile_request.dart';
import 'package:data/entity/remote/user/user_response_entity.dart';
import 'package:data/entity/remote/user/verify_otp_request.dart';
import 'package:data/entity/remote/user/verify_otp_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

//flutter pub run build_runner build
@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) {
    return _ApiService(dio, baseUrl: baseUrl);
  }

  @POST("/getBuddyList")
  Future<HttpResponse<BuddyRequestListResponseEntity>> getBuddyRequestList(
      {@Body() Map<String, dynamic> body});

  @POST("/acceptedBuddyRequest")
  Future<HttpResponse<BuddyFriendListResponseEntity>> getBuddyFriendList(
      {@Body() Map<String, dynamic> body});

  @POST("/getBuddyPlayerList")
  Future<HttpResponse<BuddyPlayerListResponseEntity>> getBuddyPlayerList(
      {@Body() Map<String, dynamic> body});

  @POST("/getOrderDetails")
  Future<HttpResponse<OrderListResponseEntity>> getOrderList(
      {@Body() Map<String, dynamic> body});

  /// get Order Details
  @POST("/getOrderDetailsByOrderIdPitchId")
  Future<HttpResponse<OrderDetailsResponseEntity>> getOrderDetailsByPlayerId(
      {@Body() Map<String, dynamic> body});

  /// Cancel Booking
  @POST("/refundInitiate")
  Future<HttpResponse<CancelOrderResponseEntity>> cancelOrder(
      {@Body() Map<String, dynamic> body});

  @POST("/getPlayerDetailsByOrderId")
  Future<HttpResponse<OrderDetailPaymentsResponseEntity>>
  getOrderDetailsPayment({@Body() Map<String, dynamic> body});

  @POST("/getPendingPaymentDetails")
  Future<HttpResponse<OrderDetailPendingPaymentsResponseEntity>>
  getOrderPendingPayment({@Body() Map<String, dynamic> body});

  @POST("/acceptBuddyRequest")
  Future<HttpResponse<AcceptBuddyResponseEntity>> acceptBuddyRequest(
      {@Body() Map<String, dynamic> body});

  @POST("/removeBuddyRequest")
  Future<HttpResponse<RemoveBuddyResponseEntity>> removeBuddy(
      {@Body() Map<String, dynamic> body});

  @POST("/addBuddy")
  Future<HttpResponse<AddBuddyResponseEntity>> addBuddy(
      {@Body() Map<String, dynamic> body});

  @POST("/inviteBuddyRequest")
  Future<HttpResponse<InviteContactResponseEntity>> inviteContact(
      {@Body() Map<String, dynamic> body});

  /// login rest api call
  @POST("/login")
  Future<HttpResponse<UserResponseEntity>> loginWithEmail(
      {@Body() LoginRequest data});

  /// register rest api call
  @POST("/register")
  Future<HttpResponse<CreatePasswordResponse>> registerUser(
      {@Body() RegistrationRequest data});

  /// update user profile
  @POST("/update_player_info")
  Future<HttpResponse<CreatePasswordResponse>> updateUserprofile(
      {@Body() UserProfileRequest data});

  @POST("/UploadPlayerImage")
  Future<HttpResponse<CreatePasswordResponse>> uploadUserProfile(
      {@Body() FormData body});

  @POST("/removePlayerImage")
  Future<HttpResponse<CreatePasswordResponse>> removeUserProfileImage(
      {@Body() Map<String, dynamic> body});

  /// forgot password rest api call
  @POST("/forgetPassword")
  Future<HttpResponse<ForgotPasswordResponse>> forgotPassword(
      {@Body() ForgotPasswordRequest data});

  @POST("/otpVerification")
  Future<HttpResponse<VerifyOtpResponse>> verifyOtpApiCall(
      {@Body() VerifyOtpRequest code});

  @POST("/resetPassword")
  Future<HttpResponse<ResetPasswordResponse>> resetPasswordApiCall(
      {@Body() ResetPasswordRequest request});

  @POST("/getPitchList")
  Future<HttpResponse<AvailablePitchesResponse>> getAvailablePitchesListApiCall(
      {@Body() AvailablePitchRequestEntity request});

  @POST("/pitchBooking")
  Future<HttpResponse<BookPitchResponse>> bookPitch(
      {@Body() BookPitchRequestEntity request});

  @POST("/getPageList")
  Future<HttpResponse<StaticPageResponseEntity>> staticPageApiCall(
      {@Body() Map<String, dynamic> body});

  @POST("/addBuddyToOrder")
  Future<HttpResponse<InviteBuddiesResponse>> inviteBuddiesBooking(
      {@Body() InviteBuddiesRequestEntity request});

  @POST("/getPaymentMethod")
  Future<HttpResponse<PaymentMethodsResponse>> getPaymentMethods(
      {@Field('split_show') bool splitShow, @Field('order_id') String orderId});

  @POST("/getOrderDetailsByOrderId")
  Future<HttpResponse<OrderDetailsResponse>> getOrderDetails(
      {@Body() OrderDetailsRequestEntity request});

  @POST("/makePaymentRequest")
  Future<HttpResponse<PaymentStatusUpdateResponse>> updatePaymentStatus(
      {@Body() PaymentStatusRequestEntity request});

  @POST("/getPaymentInvitations")
  Future<HttpResponse<PaymentInvitationsResponse>> getPaymentInvitations(
      {@Body() PaymentInvitationsRequest request});

  @POST("/getPitchListCount")
  Future<HttpResponse<PitchBookingCountResponse>> getPitchBookingCount(
      {@Body() PitchBookingCountRequest request});

  @POST("/SetPaymentMethodByOrderID")
  Future<HttpResponse<UpdateSplitPaymentStatusResponse>>
  updateSplitPaymentStatus({@Body() UpdateSplitPaymentRequest request});

  @POST("/userDelete")
  Future<HttpResponse<DeleteAccountResponse>> deleteAccountApiCall(
      {@Body() Map<String, dynamic> body});

  @POST("/updatePitchDetails")
  Future<HttpResponse<UpdatePitchBookingResponse>> updatePitchBooking(
      {@Body() UpdatePitchBookingRequest request});

  @POST("/change_password")
  Future<HttpResponse<ChangePasswordResponse>> changePasswordApiCall(
      {@Body() ChangePasswordRequest request});

  @POST("/getFaqDetails")
  Future<HttpResponse<FaqPageResponseEntity>> faqPageApiCall(
      {@Body() Map<String, dynamic> body});

  @POST("/leagueList")
  Future<HttpResponse<LeagueListResponseEntity>> getLeagues(
      @Body() LeagueListRequestEntity requestEntity);

  @POST("/knockoutList")
  Future<HttpResponse<KnockoutListResponseEntity>> getKnockout(
      {@Body() Map<String, dynamic> body});

  @GET("/getBottleList")
  Future<HttpResponse<PitchBookingBottlesListResponse>> getBottlesList();

  @POST("/createTeamInKnockout")
  Future<HttpResponse<KnockoutTeamCreateResponse>> createKnockoutTeam(
      {@Body() Map<String, dynamic> body});

  @POST("/addBuddyToTeam")
  Future<HttpResponse<KnockoutInvitationResponse>> inviteKnockoutBuddies(
      {@Body() InviteKnockoutBuddiesRequestEntity requestData});

  @POST("/getLeagueTeam")
  Future<HttpResponse<LeagueTeamsResponse>> getLeagueTeams(
      @Body() LeagueTeamsRequest leagueTeamsRequest);

  @POST("/getRuleByLeague")
  Future<HttpResponse<RulesAndRegulationsResponse>>
  getRulesAndRegulationsForLeague({@Body() RulesAndRegulationsRequest request});

  @POST("/getRuleByKnockout")
  Future<HttpResponse<RulesAndRegulationsResponse>>
  getRulesAndRegulationsForKnockout(
      {@Body() RulesAndRegulationsRequest request});

  @POST("/addBuddyToTeam")
  Future<HttpResponse<CreateLeagueTeamResponse>> addBuddiesToLeagueTeam(
      {@Body() CreateLeagueTeamRequestEntity request});

  @POST("/getResultByLeague")
  Future<HttpResponse<LeagueTableResponse>> getLeagueTableResponse(
      {@Body() LeagueTableRequestEntity request});

  @POST("/getFixtureByLeague")
  Future<HttpResponse<UpcomingFixturesResponse>> getUpcomingFixturesResponse(
      {@Body() UpcomingFixturesRequestEntity request});

  @POST("/getDiscount")
  Future<HttpResponse<DiscountPageResponseEntity>> getDiscount(
      {@Body() Map<String, dynamic> body});

  @POST("/addContact")
  Future<HttpResponse<ContactUsResponse>> contactUsApiCall(
      {@Body() ContactUsRequest request});

  @POST("/storeToken")
  Future<HttpResponse<NotificationResponseEntity>> storeToken(
      {@Body() NotificationRequestEntity request});

  @POST("/makeTokenInvalid")
  Future<HttpResponse<TokenInvalidResponse>> tokenInvalidApiCall(
      {@Body() TokenInvalidRequestEntity request});

  @POST("/getNotificationList")
  Future<HttpResponse<NotificationListResponseEntity>> getNotificationList(
      {@Body() Map<String, dynamic> body});

  @POST("/getKnockoutDetails")
  Future<HttpResponse<KnockoutDetailResponseEntity>> getKnockoutDetail(
      {@Body() Map<String, dynamic> body});

  @POST("/getLeagueDetails")
  Future<HttpResponse<LeagueDetailResponseEntity>> getLeagueDetail(
      {@Body() Map<String, dynamic> body});

  @POST("/updateUserLanguage")
  Future<HttpResponse<CreatePasswordResponse>> updateUserLanguage(
      {@Body() Map<String, dynamic> body});


  @GET("/3/movie/popular?api_key=671ea541a469d6ebded23881e9323133&language=en-US&page=1")
  Future<HttpResponse<PopularMoviesResponseEntity>> getPopularMovies();

  @GET("/3/movie/top_rated?api_key=671ea541a469d6ebded23881e9323133&language=en-US&page=1")
  Future<HttpResponse<PopularMoviesResponseEntity>> getTopRatedMovies();

  @GET("/3/movie/upcoming?api_key=671ea541a469d6ebded23881e9323133&language=en-US&page=1")
  Future<HttpResponse<PopularMoviesResponseEntity>> getUpcomingMovies();
  @GET("/3/movie/latest?api_key=671ea541a469d6ebded23881e9323133&language=en-US&page=1")
  Future<HttpResponse<PopularMoviesResponseEntity>> getLatestMovies();

}