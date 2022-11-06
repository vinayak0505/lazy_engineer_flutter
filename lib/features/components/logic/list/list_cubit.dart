import 'package:flutter_bloc/flutter_bloc.dart';

class ListCubit extends Cubit<List<String>> {
  ListCubit() : super(const []);
  void removeElement(String element) {
    List<String> newTags = List.of(state);
    if (state.contains(element)) newTags.remove(element);
    emit(newTags);
  }

  void addElement(String element) {
    List<String> newTags = List.of(state);
    if (!newTags.contains(element)) newTags.add(element);
    emit(newTags);
  }
}
