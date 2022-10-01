import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/screens/UploadScreen/upload_screen/ui/upload_screen.dart';
import '../../../assets/constants/strings.dart';
import '../../../assets/icons.dart';
import '../../../config/theme/app_theme.dart';
import '../../AccountsScreen/accounts_screen/ui/account_screen.dart';
import '../../components/custom_icon.dart';
import '../../HomeScreen/home_screen/ui/home_screen.dart';
import '../logic/bottom_nav_cubit.dart';

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // int currentIndex = context.watch<BottomNavCubit>().index;
    List<Widget> pages = const [
      HomeScreen(),
      UploadScreen(),
      AccountScreen(),
    ];

    return BlocProvider(
      create: (context) => BottomNavCubit(),
      child: BlocBuilder<BottomNavCubit, BottomNavState>(
        builder: (context, state) {
          return Scaffold(
            extendBody: true,
            body: pages[state.index],
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: AppThemes.lightDarkColor),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                child: BottomNavigationBar(
                    currentIndex: state.index,
                    onTap: (index)
                      => context.read<BottomNavCubit>().changeIndex(index),
                    items: const [
                      BottomNavigationBarItem(
                          icon: CustomIcon(
                            AppIcons.home,
                            color: Colors.grey,
                          ),
                          label: home),
                      BottomNavigationBarItem(
                          icon: CustomIcon(AppIcons.uploadIcon,
                              color: Colors.grey),
                          label: upload),
                      BottomNavigationBarItem(
                          icon: CustomIcon(AppIcons.accounts), label: accounts),
                    ]),
              ),
            ),
          );
        },
      ),
    );
  }
}
