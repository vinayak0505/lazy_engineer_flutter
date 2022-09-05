import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/screens/components/custom_text_field.dart';

import '../../../assets/constants/decoration.dart';
import '../../components/custom_chip.dart';
import '../logic/tags_cubit.dart';

class TagsWidget extends StatelessWidget {
  const TagsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController tagsController = TextEditingController();
    List<String> tags = [
      'tag1',
      'tag2',
      'tag3',
      'tag4',
    ];
    var theme = Theme.of(context);
    return BlocProvider(
      create: (context) => TagsCubit(),
      child: BlocBuilder<TagsCubit, TagsState>(
        builder: (context, state) {
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
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      padding: const EdgeInsets.all(18),
                      decoration: kRoundedBottomContainer,
                      child: Column(
                        children: [
                          CustomTextField(
                            controller: tagsController,
                            hintText: 'Search Tags',
                          ),
                          Flexible(
                            child: ListView(
                              children: tags
                                  .map((tag) => ListTile(
                                      dense: true,
                                      onTap: () {
                                        context.read<TagsCubit>().addTag(tag);
                                        tagsController.text = tag;
                                        Navigator.pop(context);
                                      },
                                      title: Text(
                                        tag,
                                        style: theme.textTheme.labelLarge,
                                        textAlign: TextAlign.center,
                                      )))
                                  .toList(),
                            ),
                          )
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
