import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_state.dart';
part 'list_cubit.freezed.dart';

class ListCubit extends Cubit<ListState> {
  ListCubit() : super(const ListState([]));
  void removeElement(String element) {
    List newTags = List.of(state.list);
    if (state.list.contains(element)) newTags.remove(element);
    emit(ListState(newTags));
  }

  void addElement(String element) {
    List newTags = List.of(state.list);
    if (!newTags.contains(element)) newTags.add(element);
    emit(ListState(newTags));
  }

  List onSubmit() {
    List returnList = List.of(state.list);
    return returnList;
  }
}
