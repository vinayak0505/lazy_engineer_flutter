import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WritersListCubit extends Cubit<List<String>> {
  final List<String>? initialList;
  final TextEditingController controller = TextEditingController();
  final focusNode = FocusNode();
  WritersListCubit({this.initialList}) : super(initialList ?? const[]) {
    focusNode.addListener(() {
      if(controller.text.isNotEmpty && !focusNode.hasFocus) {
        addElement(controller.text);
      }
    });
  }

  void removeElement(String element) {
    final List<String> newTags = List.of(state);
    if (state.contains(element)) newTags.remove(element);
    emit(newTags);
  }

  void addElement(String element) {
    final List<String> newTags = List.of(state);
    if (!newTags.contains(element)) newTags.add(element);
    controller.clear();
    emit(newTags);
  }
}
