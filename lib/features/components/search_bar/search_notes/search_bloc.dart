import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_event.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, List<dynamic>> {
  final List<dynamic> list;
  SearchBloc(this.list) : super([]) {
    on<SearchEvent>(
      (event, emit) => _search(event.query, emit),
      // transformer: debounce(const Duration(milliseconds: 1000)),
    );
  }

  Future<void> _search(String query, Emitter<List<dynamic>> emit) async {
    if (query.isEmpty) {
      emit([]);
      return;
    }
    try {
      final List<dynamic> newData = [];
      for (final ele in list) {
        if (ele.title == query.trim()) newData.add(ele);
      }
      emit(newData);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
