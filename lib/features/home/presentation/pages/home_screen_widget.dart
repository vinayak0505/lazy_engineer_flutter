import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/core/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/components/animated_icon_button.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/features/components/single_option_filter.dart';
import 'package:lazy_engineer/features/components/slide_transition_animation.dart';
import 'package:lazy_engineer/features/components/text_Field_filter.dart';
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
  });
  final String title;
  final List<Widget> body;
  final List<String>? textFieldFilter;
  final List<String>? multiOptionFilter;
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
            void onPressed() => applyFilter!.call(
                  FilterRequest(
                    textField: state.textField,
                    multiOption: state.multiOption,
                    singleOption: singleOption.text,
                  ),
                );

            return Scaffold(
              body: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    centerTitle: true,
                    title: Text(
                      title,
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
                      child: Column(
                        children: [
                          if (textFieldFilter != null) ...[
                            TextFieldFilter(textFieldFilter!),
                            const SizedBox(height: 16),
                          ],
                          if (multiOptionFilter != null) ...[
                            // MultiOptionFilter(multiOptionFilter!),
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
                              onPressed: () => onPressed(),
                            ),
                          const SizedBox(height: 16),
                          const Divider(thickness: 1),
                          const SizedBox(height: 24),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 16,
                      ),
                      child: Column(
                        children: body,
                      ),
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

class FilterMenu extends StatelessWidget {
  const FilterMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
