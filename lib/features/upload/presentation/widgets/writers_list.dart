import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/core/logic/list/list_cubit.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';

class WriterListWidget extends StatelessWidget {
  const WriterListWidget({super.key, required this.writerList});
  final void Function(List<String>) writerList;
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return BlocProvider(
      create: (context) => ListCubit(),
      child: BlocConsumer<ListCubit, List<String>>(
        listener: (context, list) => writerList.call(list),
        builder: (context, list) {
          return Column(
            children: [
              CustomTextField.secondary(
                controller: controller,
                hintText: writer,
                onSubitted: (value) {
                  context.read<ListCubit>().addElement(value);
                  controller.clear();
                },
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: list.length,
                itemBuilder: (context, index) => ListTile(
                  onLongPress: () {
                    context.read<ListCubit>().removeElement(list[index]);
                  },
                  dense: true,
                  title: Text(list[index]),
                ),
                separatorBuilder: (_, __) => const Divider(),
              ),
            ],
          );
        },
      ),
    );
  }
}
