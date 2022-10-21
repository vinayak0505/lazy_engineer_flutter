import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import '../../../../assets/constants/decoration.dart';
import '../../../../assets/constants/strings.dart';
import '../../custom_chip.dart';
import '../logic/tags_cubit.dart';

class TagsWidget extends StatelessWidget {
  const TagsWidget({Key? key, this.listTags}) : super(key: key);
  final void Function(List<String>)? listTags;
  @override
  Widget build(BuildContext context) {
    TextEditingController tagsController = TextEditingController();
    var theme = Theme.of(context);
    return BlocProvider(
      create: (context) => TagsCubit(),
      child: BlocBuilder<TagsCubit, TagsState>(
        builder: (context, state) {
          List<String> tags = context.read<TagsCubit>().tags;
          return Wrap(direction: Axis.horizontal, children: [
            ...List.generate(
              state.tags.length,
              (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: CustomChip(
                    text: state.tags[index],
                    onDelete: () {
                      context.read<TagsCubit>().removeTag(state.tags[index]);
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
                    return Container(
                      height: 200,
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      decoration: kRoundedBottomContainer,
                      child: ListView(
                        children: [
                          const SizedBox(height: 18),
                          CustomTextField(
                            controller: tagsController,
                            hintText: searchTags,
                          ),
                          const SizedBox(height: 32),
                          ...tags
                              .map((tag) => ListTile(
                                  dense: true,
                                  onTap: () {
                                    context.read<TagsCubit>().addTag(tag);
                                    tagsController.text = tag;
                                    Navigator.pop(context);
                                    // todo: have to find a way to take list
                                    // listTags!.call(context.watch<TagsCubit>().onSubmit());
                                  },
                                  title: Text(
                                    tag,
                                    style: theme.textTheme.labelLarge,
                                    textAlign: TextAlign.center,
                                  )))
                              .toList(),
                          const SizedBox(height: 18),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ]);
        },
      ),
    );
  }
}
