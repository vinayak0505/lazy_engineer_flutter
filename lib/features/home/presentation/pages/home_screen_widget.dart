import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/core/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/components/animated_icon_button.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/features/components/multi_option_filter.dart';
import 'package:lazy_engineer/features/components/single_option_filter.dart';
import 'package:lazy_engineer/features/components/slide_transition_animation.dart';
import 'package:lazy_engineer/features/components/text_Field_filter.dart';
import 'package:lazy_engineer/features/home/data/models/multioption_model/multioption_model.dart';
import 'package:lazy_engineer/features/home/presentation/cubit/filter/filter_cubit.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({
    super.key,
    required this.title,
    required this.body,
    this.textFieldFilter,
    this.multiOptionFilter,
    this.singleOptionFilter,
    this.applyFilter,
    this.extraAppBarSize = 0,
    this.valueNotifierList,
  });
  final String title;
  final double extraAppBarSize;
  final List<Widget> body;
  final List<String>? textFieldFilter;
  final List<MultioptionModel>? multiOptionFilter;
  final List<ValueNotifier<List<String>>>? valueNotifierList;
  final List<String>? singleOptionFilter;
  final Function(FilterRequest filterRequest)? applyFilter;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final singleOption = TextEditingController();
    return SafeArea(
      child: BlocProvider(
        create: (context) => FilterCubit(),
        child: BlocBuilder<FilterCubit, FilterState>(
          builder: (context, state) {
            List<MultioptionModel> newList = [];
            if (multiOptionFilter != null) {
              for (int i = 0; i < multiOptionFilter!.length; i++) {
                newList.add(
                  MultioptionModel(
                    title: multiOptionFilter![i].title,
                    body: valueNotifierList![i].value,
                  ),
                );
              }
            }
            void onPressed() => applyFilter!.call(
                  FilterRequest(
                    textField: state.textField,
                    multiOption: newList == [] ? null : newList,
                    singleOption: singleOption.text,
                  ),
                );

            return Scaffold(
              body: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    centerTitle: true,
                    toolbarHeight: kToolbarHeight + extraAppBarSize,
                    title: Text(
                      title,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headline4,
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () => Navigator.pop(context),
                        icon: const CustomIcon(AppIcons.backArrow),
                      ),
                    ),
                    actions: [
                      AnimatedIconButton.menuCross(
                        () => context.read<FilterCubit>().toggle(),
                      ),
                      const SizedBox(width: 16),
                    ],
                  ),
                  //* Filter Menu
                  SliverToBoxAdapter(
                    child: SlideTransitionAnimation(
                      open: state.isOpen,
                      verticalAnimation: true,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            if (textFieldFilter != null) ...[
                              TextFieldFilter(textFieldFilter!),
                              const SizedBox(height: 16),
                            ],
                            if (multiOptionFilter != null) ...[
                              MultioptionList(
                                multiOptionFilter: multiOptionFilter!,
                                valueNotifierList: valueNotifierList!,
                              ),
                              // MultiOptionFilter(list: multiOptionFilter!,selected: ),
                              const SizedBox(height: 16),
                            ],
                            if (singleOptionFilter != null) ...[
                              SingleOptionFilter(
                                controller: singleOption,
                                data: singleOptionFilter!,
                              ),
                              const SizedBox(height: 16),
                            ],
                            if (applyFilter != null)
                              CustomButton(
                                width: 100,
                                text: apply,
                                onPressed: onPressed,
                              ),
                            const SizedBox(height: 16),
                            const Divider(thickness: 1),
                            const SizedBox(height: 24),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 16,
                      ),
                      child: Column(children: body),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class MultioptionList extends StatelessWidget {
  const MultioptionList({
    super.key,
    required this.multiOptionFilter,
    required this.valueNotifierList,
  });
  final List<MultioptionModel> multiOptionFilter;
  final List<ValueNotifier<List<String>>> valueNotifierList;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.separated(
      itemCount: multiOptionFilter.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (_, __) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              multiOptionFilter[index].title,
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(height: 12),
            MultiOptionFilter(
              list: multiOptionFilter[index].body,
              selected: valueNotifierList[index],
            ),
          ],
        );
      },
    );
  }
}
