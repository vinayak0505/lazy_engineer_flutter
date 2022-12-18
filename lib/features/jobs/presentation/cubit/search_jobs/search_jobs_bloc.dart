import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/jobs/data/models/jobs_response/jobs_response.dart';
import 'package:lazy_engineer/features/jobs/domain/jobs_repository.dart';


part 'search_jobs_event.dart';
part 'search_jobs_state.dart';
part 'search_jobs_bloc.freezed.dart';

class SearchJobsBloc extends Bloc<SearchJobsEvent, SearchJobsState> {
  final JobsRepository _repository;
  SearchJobsBloc(this._repository) : super(const SearchJobsState.initial()) {
    on<SearchJobsEvent>(
      (event, emit) => _search(event.query, emit),
      // transformer: debounce(const Duration(milliseconds: 1000)),
    );
  }

  Future<void> _search(String query, Emitter<SearchJobsState> emit) async {
    if (query.length < 3) {
      emit(const SearchJobsState.initial());
      return;
    }
    emit(const SearchJobsState.loading());
    try {
      final data = await _repository.searchJobs(query);
      if (data != null) {
        emit(SearchJobsState.success(data));
      } else {
        emit(const SearchJobsState.loading());
      }
    } catch (e) {
      emit(SearchJobsState.failure(e));
    }
  }
}
