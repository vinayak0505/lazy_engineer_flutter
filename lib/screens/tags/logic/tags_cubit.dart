// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tags_state.dart';
part 'tags_cubit.freezed.dart';

class TagsCubit extends Cubit<TagsState> {
  TagsCubit() : super(const TagsState([]));

  List<String> tags = [
      'tag1',
      'tag2',
      'tag3',
      'tag4',
    ];
  
  void removeTag(String tag) {
    List<String> newTags = List.of(state.tags);
    if (state.tags.contains(tag)) newTags.remove(tag);
    emit(TagsState(newTags));
  }

  void addTag(String tag) {
    List<String> newTags = List.of(state.tags);
    if (!newTags.contains(tag)) newTags.add(tag);
    debugPrint('=======${newTags.toString()}');
    emit(TagsState(newTags));
  }

  List<String> onSubmit() {
    List<String> returnList = List.of(state.tags);
    emit(const TagsState(<String>[]));
    return returnList;
  }
}