import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/navigation/routes.dart';
import '../../../assets/constants/strings.dart' as string;
import '../../../assets/icons.dart';
import '../../../config/theme/app_theme.dart';
import '../../components/custom_icon.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  @override
  Widget build(BuildContext context) {
    const tabs = [
      ScaffoldWithNavBarTabItem(
        initialLocation: RouteGenerator.homeRoute,
        icon: CustomIcon(
          AppIcons.home,
          color: Colors.grey,
        ),
        label: string.home,
      ),
      ScaffoldWithNavBarTabItem(
        initialLocation: RouteGenerator.uploadRoute,
        icon: CustomIcon(
          AppIcons.uploadIcon,
          color: Colors.grey,
        ),
        label: string.upload,
      ),
      ScaffoldWithNavBarTabItem(
        initialLocation: RouteGenerator.accountRoute,
        icon: CustomIcon(
          AppIcons.accounts,
          color: Colors.grey,
        ),
        label: string.account,
      ),
    ];

    int locationToTabIndex(String location) {
      final index =
          tabs.indexWhere((t) => location.startsWith(t.initialLocation));
      // if index not found (-1), return 0
      return index < 0 ? 0 : index;
    }

    int currentIndex = locationToTabIndex(GoRouter.of(context).location);
    // callback used to navigate to the desired tab
    void onItemTapped(BuildContext context, int tabIndex) {
      if (tabIndex != currentIndex) {
        // go to the initial location of the selected tab (by index)
        context.go(tabs[tabIndex].initialLocation);
      }
    }

    return Scaffold(
      extendBody: true,
      body: widget.child,
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
            currentIndex: currentIndex,
            onTap: (index) => onItemTapped(context, index),
            items: tabs,
          ),
        ),
      ),
    );
  }
}

class ScaffoldWithNavBarTabItem extends BottomNavigationBarItem {
  const ScaffoldWithNavBarTabItem(
      {required this.initialLocation, required Widget icon, String? label})
      : super(icon: icon, label: label);

  /// The initial location/path
  final String initialLocation;
}
