import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../assets/constants/lists.dart';
import '../../../../assets/constants/strings.dart';
import '../../../../assets/icons.dart';
import '../../../../config/route/routes.dart';
import '../../../../model/user.dart';
import '../../../components/custom_text_field.dart';
import '../../../components/grid_card.dart';
import 'components/slider_view.dart';

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
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              _nametag(theme, user.userName),
              const SizedBox(height: 12),
              _searchBar(theme),
              const SizedBox(height: 28),
              SliderView(imageList: sliderImageList),
              const SizedBox(height: 24),
              _titleLabel(lastOpened, theme),
              const SizedBox(height: 140),
              _titleLabel(categories, theme),
              const SizedBox(height: 16),
              _staggeredView()
            ]),
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

  Widget _staggeredView() {
    return MasonryGridView.count(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      itemCount: categoriesList.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => _navigation(context, index),
          child: GridCard(data: categoriesList[index]),
        );
      },
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
    );
  }

  void _navigation(BuildContext context, int index) {
    String nav() {
      switch (index) {
        case 0:
          return RouteGenerator.notesScreen;
        case 1:
          return RouteGenerator.questionPaperScreen;
        case 2:
          return RouteGenerator.practicleFileScreen;
        case 3:
          return RouteGenerator.booksScreen;
        case 4:
          return RouteGenerator.jobsScreen;
        default:
          return RouteGenerator.homeScreen;
      }
    }

    Navigator.pushNamed(context, nav());
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
                Text(hello,
                    style: theme.textTheme.headline4
                        ?.copyWith(fontSize: 20, fontWeight: FontWeight.w600)),
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
                onTap: () {})
          ]),
    );
  }
}
