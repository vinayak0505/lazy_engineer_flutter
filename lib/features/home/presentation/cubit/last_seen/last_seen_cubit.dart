import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/home/domain/repositories/home_repository.dart';

part 'last_seen_state.dart';
part 'last_seen_cubit.freezed.dart';

class LastSeenCubit extends Cubit<LastSeenState> {
  final HomeRepository _repository;
  LastSeenCubit(this._repository) : super(const LastSeenState.loading()) {
    getLastSeen();
  }
  void getLastSeen() {
    void getNotice() {
    try {
      dynamic data = _repository.getNotice;
      emit(LastSeenState.success(data));
    } catch (e) {
      emit(LastSeenState.failure(e));
    }
  }
  }
}
