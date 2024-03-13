import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/config/theme/app_theme.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/features/upload/presentation/cubit/writers_list/writers_list_cubit.dart';

class WriterListWidget extends StatelessWidget {
  const WriterListWidget({super.key, required this.writerList});
  final void Function(List<String>) writerList;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WritersListCubit(),
      child: BlocConsumer<WritersListCubit, List<String>>(
        listener: (context, list) => writerList.call(list),
        builder: (context, list) {
          return Column(
            children: [
              CustomTextField.secondary(
                controller: context.read<WritersListCubit>().controller,
                focusNode: context.read<WritersListCubit>().focusNode,
                hintText: writers,
                onSubitted: (value) {
                  context.read<WritersListCubit>().addElement(value);
                },
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: list.length,
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Expanded(child: Text(list[index])),
                      IconButton(
                        padding: EdgeInsets.all(6),
                        constraints: BoxConstraints(),
                        onPressed: () {
                          context.read<WritersListCubit>().removeElement(list[index]);
                        },
                        icon: Icon(
                          Icons.close,
                          color: AppThemes.lightDarkColor,
                        ),
                      ),
                    ],
                  ),
                ),
                separatorBuilder: (_, __) => const Divider(height: 1),
              ),
            ],
          );
        },
      ),
    );
  }
}
