import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/features/home/presentation/cubit/filter/filter_cubit.dart';

class TextFieldFilter extends StatefulWidget {
  const TextFieldFilter(this.list, {super.key});
  final List<String> list;

  @override
  State<TextFieldFilter> createState() => _TextFieldFilterState();
}

class _TextFieldFilterState extends State<TextFieldFilter> {
  late List<TextEditingController> controllerList;
  @override
  void initState() {
    super.initState();
    controllerList =
        List.generate(widget.list.length, (_) => TextEditingController());
    for (int i = 0; i < widget.list.length; i++) {
      controllerList[i].addListener(() {
        context.read<FilterCubit>().modifyTextField(
              controllerList.map((ele) => ele.text).toList(),
            );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: kRoundedContainer,
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: widget.list
            .map(
              (str) => CustomTextField.secondary(
                hintText: str,
                controller: controllerList[widget.list.indexOf(str)],
              ),
            )
            .toList(),
      ),
    );
  }
}
