import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/core/logic/list/list_cubit.dart';
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
            final TextEditingController tagsController = TextEditingController();
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
                                  final theme = Theme.of(context);
                                  List<Widget> tagWidget() {
                                    void onTapTag(String tag) {
                                      cubit.addElement(tag);
                                      // cubit.add(ListEvent.add(tag));
                                      tagsController.text = tag;
                                      Navigator.pop(context);
                                    }

                                    return tags
                                        .map(
                                          (tag) => ListTile(
                                            dense: true,
                                            onTap: () => onTapTag(tag),
                                            title: Text(
                                              tag,
                                              style: theme.textTheme.labelLarge,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        )
                                        .toList();
                                  }

                                  return Container(
                                    height: 300,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 18,
                                    ),
                                    decoration: kRoundedTopContainer,
                                    child: ListView(
                                      children: [
                                        const SizedBox(height: 18),
                                        CustomTextField(
                                          controller: tagsController,
                                          hintText: searchTags,
                                        ),
                                        const SizedBox(height: 32),
                                        ...tagWidget(),
                                        const SizedBox(height: 18),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      if (formState.hasError && formState.errorText != null)
                        Text(
                          formState.errorText!,
                          style: errorStyle,
                        ),
                    ],
                  );
                },
              ),
            );
          },
        );
}
