part of 'last_seen_cubit.dart';

@freezed
abstract class LastSeenState with _$LastSeenState {
  const factory LastSeenState.loading() = _LastSeenLoading;
  const factory LastSeenState.failure(dynamic e) = _LastSeenFailure;
  const factory LastSeenState.success(List<LastSeenResponse> data) = _LastSeenSuccess;
}
