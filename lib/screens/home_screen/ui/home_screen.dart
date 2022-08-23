import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/screens/components/grid_card.dart';
import 'package:lazy_engineer/screens/home_screen/bloc/user_cubit.dart';
import 'package:lazy_engineer/screens/home_screen/bloc/user_state.dart';
import '../../../assets/constants/strings.dart';
import '../../../config/route/routes.dart';
import '../../../model/user.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return BlocBuilder<UserCubit, UserState>(builder: (context, state) {
      if (state is UserStateLoadingState) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is UserStateSuccessState) {
        return HomeScreenView(user: state.user);
      } else if (state is UserStateFailureState) {
        return Center(
            child: Text(state.e.toString(), style: TextStyle(color: theme.errorColor)));
      } else {
        return const SizedBox();
      }
    });
  }
}

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({Key? key, required this.user}) : super(key: key);
  final User user;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          _nametag(theme, user.userName),
          const SizedBox(height: 12),
          // SearchBar(
          //   searchController: searchController,
          // ),
          const SizedBox(height: 32),
          // _slider(),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              HomeScreenText.lastOpened,
              style: theme.textTheme.titleLarge,
            ),
          ),
          const SizedBox(height: 100),
          Container(
            padding: const EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              HomeScreenText.categories,
              style: theme.textTheme.titleLarge,
            ),
          ),
          staggeredView()
        ]),
      ),
    );
  }

  Widget staggeredView() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: HomeScreenList.categoriesList.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => _navigation(context, index),
          child: GridCard(data: HomeScreenList.categoriesList[index]),
        );
      },
    );
  }

  void _navigation(BuildContext context, int index) {
    String _nav() {
      switch (index) {
        case 0:
          return PageRoutes.notesScreen;
        case 1:
          return PageRoutes.questionPaperScreen;
        case 2:
          return PageRoutes.practicleFileScreen;
        case 3:
          return PageRoutes.booksScreen;
        case 4:
          return PageRoutes.jobsScreen;
        default:
          return PageRoutes.homeScreen;
      }
    }

    Navigator.pushReplacementNamed(context, _nav());
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
                    HomeScreenText.hello,
                    style: theme.textTheme.headline4
                        ?.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    name,
                    style: theme.textTheme.headline4,
                  ),
                ]),
            const Spacer(),
            GestureDetector(
              child: SvgPicture.asset(
                AppIcons.notifications,
                width: 48,
                height: 48,
              ),
              onTap: () {},
            )
          ]),
    );
  }
}
