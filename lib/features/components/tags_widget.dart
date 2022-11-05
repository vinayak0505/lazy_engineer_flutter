import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/features/components/logic/list/list_cubit.dart';
import '../../assets/constants/decoration.dart';
import '../../assets/constants/lists.dart';
import '../../assets/constants/strings.dart';
import 'custom_chip.dart';

class TagsWidget extends FormField<List<String>> {
  TagsWidget({
    Key? key,
    required Function(List<String>) listTags,
    FormFieldValidator<List<String>>? validator,
  }) : super(
          key: key,
          validator: validator,
          builder: (FormFieldState<List<String>> formFeildState) {
            TextEditingController tagsController = TextEditingController();
            return BlocProvider(
              create: (context) => ListCubit(),
              child: BlocBuilder<ListCubit, ListState>(
                builder: (context, state) {
                  List<String> tags = tagsList;
                  final cubit = context.read<ListCubit>();
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        direction: Axis.horizontal,
                        children: [
                          ...List.generate(
                            state.list.length,
                            (index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: CustomChip(
                                  text: state.list[index],
                                  onDelete: () {
                                    cubit.removeElement(state.list[index]);
                                  },
                                ),
                              );
                            },
                          ),
                          InkWell(
                            child: CustomChip.addTags(),
                            onTap: () {
                              showModalBottomSheet<void>(
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (BuildContext bottomSheetContext) {
                                  var theme = Theme.of(context);
                                  List<Widget> tagWidget() {
                                    void onTapTag(String tag) {
                                      cubit.addElement(tag);
                                      listTags.call(state.list);
                                      if (validator != null) {
                                        validator.call(state.list);
                                      }
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
                                    height: 200,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 18,
                                    ),
                                    decoration: kRoundedBottomContainer,
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
                      if (formFeildState.hasError &&
                          formFeildState.errorText != null)
                        Text(
                          formFeildState.errorText!,
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
