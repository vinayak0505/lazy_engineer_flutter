import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../assets/constants/decoration.dart';
import '../home/presentation/cubit/filter/filter_cubit.dart';

class MultiOptionFilter extends FormField<List<bool>> {
  MultiOptionFilter(
    List<String> list, {
    Key? key,
  }) : super(
          key: key,
          initialValue: List.generate(list.length, (index) => false),
          builder: (state) {
            ThemeData theme = Theme.of(state.context);
            void updateList() {
              state.context
                  .read<FilterCubit>()
                  .modifyMultiOption(list.map((ele) {
                    return state.value![list.indexOf(ele)] ? ele : '';
                  }).toList());
            }

            return Container(
              padding: const EdgeInsets.all(8),
              decoration: kRoundedContainer,
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: list
                    .map((ele) => CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          dense: true,
                          controlAffinity: ListTileControlAffinity.leading,
                          value: state.value![list.indexOf(ele)],
                          onChanged: (value) {
                            state.value![list.indexOf(ele)] = value!;
                            state.didChange(state.value);
                            updateList();
                          },
                          title: Text(
                            ele,
                            style: theme.textTheme.titleMedium,
                          ),
                        ))
                    .toList(),
              ),
            );
          },
        );
}
