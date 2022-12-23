import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../assets/constants/lists.dart';
import '../../../../assets/constants/strings.dart';
import '../../../../assets/icons.dart';
import '../../../../navigation/routes.dart';
import '../../../../model/user.dart';
import '../../../components/custom_text_field.dart';
import '../../../components/grid_card.dart';
import '../../../components/staggered_view.dart';
import '../widgets/last_opened.dart';
import '../widgets/slider_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final User user = User.dummy();
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 28),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _nametag(theme, user.userName),
                const SizedBox(height: 12),
                _searchBar(theme),
                const SizedBox(height: 28),
                SliderView(sliderImageList),
                const SizedBox(height: 24),
                _titleLabel(lastOpened, theme),
                const SizedBox(height: 24),
                const LastOpened(),
                const SizedBox(height: 24),
                _titleLabel(categories, theme),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: StaggeredView(
                    categoriesList
                        .map((element) => GridCard.category(element))
                        .toList(),
                    onTap: (context, index) => _navigation(context, index),
                  ),
                ),
              ],
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

  Widget _searchBar(ThemeData theme) {
    TextEditingController searchController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomTextField(
          controller: searchController,
          hintText: searchCourse,
          suffixIcon: AppIcons.searchIcon),
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

  Widget _nametag(ThemeData theme, String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hello,
                  style: theme.textTheme.headline4?.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(name, style: theme.textTheme.headline4),
              ],
            ),
            const Spacer(),
            GestureDetector(
              child: SvgPicture.asset(
                AppIcons.notificationCircleIcon,
                width: 48,
                height: 48,
              ),
              onTap: () {},
            )
          ]),
    );
  }
}