import 'package:freezed_annotation/freezed_annotation.dart';

part 'airport_states.freezed.dart';

@freezed
class AirportState with _$AirportState {
  const factory AirportState.initial() = _Initial;
  const factory AirportState.loading() = AirportStateLoading;
  const factory AirportState.search() = AirportStateSearch;
  const factory AirportState.success(dynamic data) = AirportStateSuccess;
  const factory AirportState.failure(dynamic data) = AirportStateFailure;
}
