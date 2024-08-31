import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_states.freezed.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState.initial() = _BookingInitial;
  const factory BookingState.loading() = BookingStateLoading;
  const factory BookingState.success(dynamic data) = BookingStateSuccess;
  const factory BookingState.failure(dynamic data) = BookingStateFailure;
}