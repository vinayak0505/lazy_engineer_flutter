import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/core/logic/list/list_cubit.dart';
import 'package:lazy_engineer/core/logic/search_string_bloc/search_string_bloc.dart';
import 'package:lazy_engineer/features/components/custom_chip.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';

class EditTagsWidget extends FormField<List<String>> {
  EditTagsWidget({
    super.key,
    required Function(List<String>) listTags,
    List<String>? customTags,
    super.validator,
  }) : super(
          builder: (FormFieldState<List<String>> formState) {
            final TextEditingController tagsController =
                TextEditingController();
            return BlocProvider(
              create: (context) => ListCubit(),
              child: BlocConsumer<ListCubit, List<String>>(
                listener: (context, list) {
                  listTags.call(list);
                  if (validator != null) validator.call(list);
                },
                builder: (context, list) {
                  final List<String> tags = customTags ?? tagsList;
                  final cubit = context.read<ListCubit>();

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        children: [
                          ...List.generate(
                            list.length,
                            (index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: CustomChip(
                                  text: list[index],
                                  onDelete: () {
                                    cubit.removeElement(list[index]);
                                  },
                                ),
                              );
                            },
                          ),
                          InkWell(
                            child: CustomChip.addTags(),
                            onTap: () {
                              showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (_) {
                                  return TagBottomSheet(
                                    tagsController: tagsController,
                                    cubit: cubit,
                                    tags: tags,
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      if (formState.hasError && formState.errorText != null)
                        Text(formState.errorText!, style: errorStyle),
                    ],
                  );
                },
              ),
            );
          },
        );
}

class TagBottomSheet extends StatelessWidget {
  const TagBottomSheet({
    super.key,
    required this.tagsController,
    required this.tags,
    required this.cubit,
  });
  final TextEditingController tagsController;
  final List<String> tags;
  final ListCubit cubit;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    void onTapTag(String tag) {
      cubit.addElement(tag);
      tagsController.clear();
      Navigator.pop(context);
    }

    return Container(
      height: 300,
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
      ),
      decoration: kRoundedTopContainer,
      child: BlocProvider(
        create: (context) => SearchStringBloc(tags),
        child: BlocBuilder<SearchStringBloc, List<String>>(
          builder: (context, state) {
            tagsController.addListener(() {
              context.read<SearchStringBloc>().add(
                    SearchStringEvent(tagsController.text),
                  );
            });
            return ListView(
              children: [
                const SizedBox(height: 18),
                CustomTextField(
                  controller: tagsController,
                  hintText: searchTags,
                ),
                const SizedBox(height: 32),
                ListView.builder(
                  itemCount: state.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      dense: true,
                      onTap: () => onTapTag(state[index]),
                      title: Text(
                        state[index],
                        style: theme.textTheme.labelLarge,
                        textAlign: TextAlign.center,
                      ),
                    );
                  },
                ),
                const SizedBox(height: 18),
              ],
            );
          },
        ),
      ),
    );
  }
}
