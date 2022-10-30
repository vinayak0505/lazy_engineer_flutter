import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/features/components/logic/list/list_cubit.dart';

import '../../../../assets/constants/strings.dart';
import '../../../components/custom_text_field.dart';

class WriterListWidget extends StatelessWidget {
  const WriterListWidget({super.key, required this.writerList});
  final void Function(List<String>) writerList;
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return BlocProvider(
      create: (context) => ListCubit(),
      child: BlocBuilder<ListCubit, ListState>(
        builder: (context, state) {
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
                itemCount: state.list.length,
                itemBuilder: (context, index) => ListTile(
                  onLongPress: () {
                    context.read<ListCubit>().removeElement(
                          state.list[index],
                        );
                  },
                  dense: true,
                  title: Text(state.list[index]),
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
