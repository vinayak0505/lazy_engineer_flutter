import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/home/data/models/last_seen_response/last_seen_response.dart';
import 'package:lazy_engineer/features/home/domain/repositories/home_repository.dart';

part 'last_seen_state.dart';
part 'last_seen_cubit.freezed.dart';

class LastSeenCubit extends Cubit<LastSeenState> {
  final HomeRepository _repository;
  LastSeenCubit(this._repository) : super(const LastSeenState.loading()) {
    getLastSeen();
  }
  Future<void> getLastSeen() async {
    try {
      final List<LastSeenResponse>? data = await _repository.getLastSeen();
      if (data != null) {
        emit(LastSeenState.success(data));
      } else {
        emit(const LastSeenState.loading());
      }
    } catch (e) {
      emit(LastSeenState.failure(e));
    }
  }
}
