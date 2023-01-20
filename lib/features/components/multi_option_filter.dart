import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/core/logic/list/list_cubit.dart';

class MultiOptionFilter extends StatelessWidget {
  final List<String> list;
  final ValueNotifier<List<String>> selected;

  const MultiOptionFilter({
    required this.list,
    required this.selected,
    super.key,
  }) : super();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: kRoundedContainer,
        child: BlocProvider(
          create: (context) => ListCubit(),
          child: BlocBuilder<ListCubit, List<String>>(
            builder: (context, state) {
            final cubit = context.read<ListCubit>();
              return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return CheckboxListTile(
                    dense: true,
                    // value: selected.value.contains(list[index]),
                    value: state.contains(list[index]),
                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (value) {
                      if (value != null) {
                        if (value) {
                          cubit.addElement(list[index]);
                          selected.value.add(list[index]);
                        } else {
                          cubit.removeElement(list[index]);
                          selected.value.remove(list[index]);
                        }
                      }
                    },
                    title: Text(
                      list[index],
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
