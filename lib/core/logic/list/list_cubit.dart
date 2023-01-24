import 'package:flutter_bloc/flutter_bloc.dart';

class ListCubit extends Cubit<List<String>> {
  final List<String>? initialList;
  ListCubit({this.initialList}) : super(initialList ?? const[]);
  void removeElement(String element) {
    final List<String> newTags = List.of(state);
    if (state.contains(element)) newTags.remove(element);
    emit(newTags);
  }

  void addElement(String element) {
    final List<String> newTags = List.of(state);
    if (!newTags.contains(element)) newTags.add(element);
    emit(newTags);
  }
}
