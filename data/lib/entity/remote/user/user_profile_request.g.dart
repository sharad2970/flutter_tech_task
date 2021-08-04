// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileRequest _$UserProfileRequestFromJson(Map<String, dynamic> json) {
  return UserProfileRequest(
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    dob: json['date_of_birth'] as String,
    email: json['email'] as String,
    mobile: json['mobile'] as String,
    countryCode: json['country_code'] as String,
  );
}

Map<String, dynamic> _$UserProfileRequestToJson(UserProfileRequest instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'date_of_birth': instance.dob,
      'email': instance.email,
      'mobile': instance.mobile,
      'country_code': instance.countryCode,
    };
