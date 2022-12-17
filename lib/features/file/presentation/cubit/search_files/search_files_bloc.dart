import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/file/data/models/files_response/files_response.dart';
import 'package:lazy_engineer/features/file/domain/repositories/files_repository.dart';

part 'search_files_event.dart';
part 'search_files_state.dart';
part 'search_files_bloc.freezed.dart';

class SearchFilesBloc extends Bloc<SearchFilesEvent, SearchFilesState> {
  final FilesRepository _repository;
  SearchFilesBloc(this._repository) : super(const SearchFilesState.initial()) {
    on<SearchFilesEvent>(
      (event, emit) => _search(event.query, emit),
      // transformer: debounce(const Duration(milliseconds: 1000)),
    );
  }

  Future<void> _search(String query, Emitter<SearchFilesState> emit) async {
    if (query.length < 3) {
      emit(const SearchFilesState.initial());
      return;
    }
    emit(const SearchFilesState.loading());
    try {
      final data = await _repository.searchFiles(query);
      if (data != null) {
        emit(SearchFilesState.success(data));
      } else {
        emit(const SearchFilesState.loading());
      }
    } catch (e) {
      emit(SearchFilesState.failure(e));
    }
  }
}
