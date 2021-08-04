import 'package:dartz/dartz.dart';
import 'package:domain/error/network_error.dart';
import 'package:domain/model/pitch_booking_multiple/pitch_booking_count.dart';
import 'package:domain/model/pitch_booking_multiple/update_pitch.dart';
import 'package:domain/model/pitch_booking_multiple/update_pitch_request.dart';

/// Pitch Booking module repository provider
abstract class PitchBookingMultipleRepository {
  /// fetch all available pitches
  Future<Either<NetworkError, PitchBookingCount>> getAvailablePitchesCount(
      {String pitchCount});

  Future<Either<NetworkError, UpdatePitch>> updatePitch(
      {UpdatePitchRequest request});
}
