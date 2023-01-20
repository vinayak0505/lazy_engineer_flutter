import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_string_event.dart';
part 'search_string_bloc.freezed.dart';

class SearchStringBloc extends Bloc<SearchStringEvent, List<String>> {
  final List<String> list;
  SearchStringBloc(this.list) : super(list) {
    on<SearchStringEvent>(
      (event, emit) => _search(event.query, emit),
      // transformer: debounce(const Duration(milliseconds: 1000)),
    );
  }

  Future<void> _search(String query, Emitter<List<String>> emit) async {
    if (query.isEmpty) {
      emit(list);
      return;
    }
    try {
      final List<String> newData = [];
      for (final ele in list) {
        if (ele.toLowerCase().contains(query.trim().toLowerCase())) {
          newData.add(ele);
        }
      }
      emit(newData);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
