import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/multi_option_filter.dart';
import 'package:lazy_engineer/features/components/text_feild_filter.dart';
import 'package:lazy_engineer/features/home/presentation/cubit/filter/filter_cubit.dart';
import 'package:lazy_engineer/features/notes/data/models/filter_request/filter_request.dart';

import '../../../components/custom_icon.dart';
import '../../../components/single_option_filter.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget(
    this.body, {
    Key? key,
    this.textFeildFilter,
    this.multiOptionFilter,
    this.singleOptionFilter,
    this.applyFilter,
  }) : super(key: key);
  final List<Widget> body;
  final List<String>? textFeildFilter;
  final List<String>? multiOptionFilter;
  final List<String>? singleOptionFilter;
  final Function(FilterRequest filterRequest)? applyFilter;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextEditingController singleOption = TextEditingController();
    return SafeArea(
      child: BlocProvider(
        create: (context) => FilterCubit(),
        child: BlocBuilder<FilterCubit, bool>(
          builder: (context, state) {
            var textFeild = context.read<FilterCubit>().textFeild;
            var multiOption = context.read<FilterCubit>().multiOption;
            return Scaffold(
              appBar: AppBar(
                  centerTitle: true,
                  title: Text(
                    notes,
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
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () => context.read<FilterCubit>().toggle(),
                      icon: !state
                          ? const CustomIcon(AppIcons.filterIcon)
                          : const CustomIcon(AppIcons.closeIcon),
                    ),
                    const SizedBox(width: 16),
                  ]),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      if (state)
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 500),
                          switchInCurve: Curves.easeIn,
                          child: Column(
                            children: [
                              if (textFeildFilter != null) ...[
                                TextFeildFilter(textFeildFilter!),
                                const SizedBox(height: 16),
                              ],
                              if (multiOptionFilter != null) ...[
                                MultiOptionFilter(multiOptionFilter!),
                                const SizedBox(height: 16),
                              ],
                              if (singleOptionFilter != null) ...[
                                SingleOptionFilter(
                                  controller: singleOption,
                                  data: singleOptionFilter!,
                                ),
                                const SizedBox(height: 16),
                              ],
                              const SizedBox(height: 16),
                              if (applyFilter != null)
                                CustomButton(
                                    width: 100,
                                    text: apply,
                                    onPressed: () {
                                      print(
                                        '||||||||||$textFeild and $multiOption',
                                      );
                                      applyFilter!.call(
                                        FilterRequest(
                                          textFeild: textFeild,
                                          multiOption: multiOption,
                                          singleOption: singleOption.text,
                                        ),
                                      );
                                    }),
                              const SizedBox(height: 16),
                              const Divider(),
                              const SizedBox(height: 24),
                            ],
                          ),
                        ),
                      ...body,
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
