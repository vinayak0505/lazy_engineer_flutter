import 'package:flutter/material.dart';
import 'package:lazy_engineer/config/route/routes.dart';
import 'package:lazy_engineer/screens/home_screen/ui/home_screen.dart';
import 'package:lazy_engineer/screens/splash_screen.dart';

import 'config/theme/app_theme/app_theme.dart';

GlobalKey<NavigatorState> mainNavigatorKey = GlobalKey<NavigatorState>();

class ScrollBehaviorModified extends ScrollBehavior {
  const ScrollBehaviorModified();

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return const AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        builder: (context, child) => ScrollConfiguration(
          behavior: const ScrollBehaviorModified(),
          child: child!,
        ),
        navigatorKey: mainNavigatorKey,
        themeMode: ThemeMode.system,
        theme: AppThemes.appThemeData[AppTheme.lightTheme],
        debugShowCheckedModeBanner: false,
        // navigatorObservers: [observer],
        home: const HomeScreen(),
        // home: const SplashPage(isHome: true),
        routes: PageRoutes.routes,
    );
  }
}
