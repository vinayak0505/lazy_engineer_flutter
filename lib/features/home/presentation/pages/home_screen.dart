import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';
import 'package:lazy_engineer/features/components/failiure_screen.dart';
import 'package:lazy_engineer/features/components/grid_card.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/features/components/staggered_view.dart';
import 'package:lazy_engineer/features/home/data/repositories/home_repository_impl.dart';
import 'package:lazy_engineer/features/home/presentation/cubit/user/user_cubit.dart';
import 'package:lazy_engineer/features/home/presentation/widgets/slider_view.dart';
import 'package:lazy_engineer/navigation/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 28),
            child: BlocProvider(
              create: (context) => UserCubit(HomeRepositoryImpl()),
              child: BlocBuilder<UserCubit, UserState>(
                builder: (context, state) {
                  return state.when(
                    loading: () => const LoadingScreen(),
                    failure: (e) => FailureScreen(e),
                    success: (user) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _nametag(context, user.userName),
                          const SizedBox(height: 12),
                          const SizedBox(height: 28),
                          SliderView(sliderImageList),
                          const SizedBox(height: 24),
                          // _titleLabel(lastOpened, theme),
                          // const SizedBox(height: 24),
                          // const LastOpened(),
                          // const SizedBox(height: 24),
                          _titleLabel(categories, theme),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: StaggeredView(
                              categoriesList
                                  .map((element) => GridCard.category(element))
                                  .toList(),
                              onTap: (context, index) =>
                                  _navigation(context, index),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _titleLabel(String title, ThemeData theme) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: theme.textTheme.titleLarge,
      ),
    );
  }

  void _navigation(BuildContext context, int index) {
    String nav() {
      switch (index) {
        case 0:
          return RouteGenerator.notesRoute;
        case 1:
          return RouteGenerator.questionPaperRoute;
        case 2:
          return RouteGenerator.fileRoute;
        case 3:
          return RouteGenerator.booksRoute;
        case 4:
          return RouteGenerator.jobsRoute;
        default:
          return RouteGenerator.homeRoute;
      }
    }

    context.push(nav());
  }

  Widget _nametag(BuildContext context, String name) {
    void onPress() {
      ScaffoldMessenger.of(context).showSnackBar(toBeBuildInFutureSnackBar);
    }
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                hello,
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(name, style: theme.textTheme.headlineMedium),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: onPress,
            child: const CustomImage(
              image: AppIcons.notificationCircleIcon,
              width: 48,
              height: 48,
            ),
          ),
        ],
      ),
    );
  }
}
