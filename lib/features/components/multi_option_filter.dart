import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/features/home/presentation/cubit/filter/filter_cubit.dart';

class MultiOptionFilter extends FormField<List<bool>> {
  MultiOptionFilter(
    List<String> list, {
    Key? key,
  }) : super(
          key: key,
          initialValue: List.generate(list.length, (index) => false),
          builder: (state) {
            void updateList() {
              state.context
                  .watch<FilterCubit>()
                  .modifyMultiOption(list.map((ele) {
                    return state.value![list.indexOf(ele)] ? ele : '';
                  }).toList());
            }

            return ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: list
                  .map((ele) => CheckboxListTile(
                        dense: true,
                        controlAffinity: ListTileControlAffinity.leading,
                        value: state.value![list.indexOf(ele)],
                        onChanged: (value) {
                          state.value![list.indexOf(ele)] = value!;
                          state.didChange(state.value);
                          updateList();
                        },
                        title: Text(ele),
                      ))
                  .toList(),
            );
          },
        );
}

// class MultiOptionFilter extends StatelessWidget {
//   const MultiOptionFilter({
//     super.key,
//     required this.list,
//   });
//   final List<String> list;
//   @override
//   Widget build(BuildContext context) {
//     List<bool> valueList = List.generate(list.length, (index) => false);
//     return ListView(
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       children: list
//           .map((ele) => CheckboxListTile(
//                 dense: true,
//                 controlAffinity: ListTileControlAffinity.leading,
//                 value: valueList[list.indexOf(ele)],
//                 onChanged: (value) =>
//                     valueList[list.indexOf(ele)] = value!, // need setstate
//                 title: Text(ele),
//               ))
//           .toList(),
//     );
//   }
// }
