import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/assets/constants/strings.dart' as string;
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/config/theme/app_theme.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/navigation/routes.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen(this.child, {super.key});
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
        icon: CustomIcon(AppIcons.home, color: Colors.grey),
        activeIcon: CustomIcon(
          AppIcons.home,
          color: AppThemes.primaryColor2,
        ),
        label: string.home,
      ),
      ScaffoldWithNavBarTabItem(
        initialLocation: RouteGenerator.downloadRoute,
        icon: CustomIcon(AppIcons.downloadIcon, color: Colors.grey),
        activeIcon: CustomIcon(
          AppIcons.downloadIcon,
          color: AppThemes.primaryColor2,
        ),
        label: string.download,
      ),
      ScaffoldWithNavBarTabItem(
        initialLocation: RouteGenerator.uploadRoute,
        icon: CustomIcon(AppIcons.uploadIcon, color: Colors.grey),
        activeIcon: CustomIcon(
          AppIcons.uploadIcon,
          color: AppThemes.primaryColor2,
        ),
        label: string.upload,
      ),
      ScaffoldWithNavBarTabItem(
        initialLocation: RouteGenerator.accountRoute,
        icon: CustomIcon(AppIcons.accounts, color: Colors.grey),
        activeIcon: CustomIcon(
          AppIcons.accounts,
          color: AppThemes.primaryColor2,
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

    final int currentIndex = locationToTabIndex(GoRouter.of(context).location);
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
      bottomNavigationBar: ColoredBox(
        color: Colors.transparent,
        child: Container(
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
      ),
    );
  }
}

class ScaffoldWithNavBarTabItem extends BottomNavigationBarItem {
  const ScaffoldWithNavBarTabItem({
    required this.initialLocation,
    required super.icon,
    required super.activeIcon,
    super.label,
  });

  /// The initial location/path
  final String initialLocation;
}
