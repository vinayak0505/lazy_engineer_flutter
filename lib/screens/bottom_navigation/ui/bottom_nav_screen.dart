import 'package:flutter/material.dart';
import '../../../assets/icons.dart';
import '../../../config/theme/app_theme.dart';
import '../../AccountsScreen/accounts_screen/ui/account_screen.dart';
import '../../components/custom_icon.dart';
import '../../UploadScreen/upload_notes_screen/ui/upload_notes_screen.dart';
import '../../HomeScreen/home_screen/ui/home_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
    int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // int currentIndex = context.watch<BottomNavCubit>().index;
    List<Widget> pages = const [
      HomeScreen(),
      UploadNotesScreen(),
      AccountScreen(),
    ];

    return Scaffold(
      extendBody: true,
      body: pages[_currentIndex],
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
              currentIndex: _currentIndex,
              onTap: (index) {
                // context.watch<BottomNavCubit>().getIndex(index);
                setState(() {
                  _currentIndex = index;
                  print('==$_currentIndex and $index');
                });
              },
              items: const [
                BottomNavigationBarItem(
                    icon: CustomIcon(
                      AppIcons.home,
                      color: Colors.grey,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: CustomIcon(AppIcons.uploadIcon, color: Colors.grey),
                    label: 'Upload'),
                BottomNavigationBarItem(
                    icon: CustomIcon(AppIcons.accounts), label: 'Accounts'),
              ]),
        ),
      ),
    );
  }
}
