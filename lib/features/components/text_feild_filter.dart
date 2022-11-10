import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/features/home/presentation/cubit/filter/filter_cubit.dart';

class TextFeildFilter extends StatelessWidget {
  const TextFeildFilter(this.list, {super.key});
  final List<String> list;

  @override
  Widget build(BuildContext context) {
    List<TextEditingController> controllerList =
        List.generate(list.length, (_) => TextEditingController());
    context.watch<FilterCubit>().modifyTextFeild(
          controllerList.map((ele) => ele.text).toList(),
        );
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: list
          .map((str) => CustomTextField.secondary(
                hintText: str,
                controller: controllerList[list.indexOf(str)],
              ))
          .toList(),
    );
  }
}
