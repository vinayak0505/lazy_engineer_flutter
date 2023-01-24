part of 'notice_cubit.dart';

@freezed
abstract class NoticeState with _$NoticeState {
  const factory NoticeState.loading() = _NoticeLoading;
  const factory NoticeState.failure(dynamic e) = _NoticeFailure;
  const factory NoticeState.success(dynamic data) = _NoticeSuccess;
}
