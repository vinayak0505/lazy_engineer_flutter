import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/config/route/routes.dart';
import 'package:lazy_engineer/config/theme/bloc/theme_bloc.dart';
import 'package:lazy_engineer/config/theme/bloc/theme_state.dart';
import 'package:lazy_engineer/screens/home_screen/ui/home_screen.dart';
import 'package:lazy_engineer/screens/splash_screen.dart';

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
    return BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
      return MaterialApp(
        builder: (context, child) => ScrollConfiguration(
          behavior: const ScrollBehaviorModified(),
          child: child!,
        ),
        navigatorKey: mainNavigatorKey,
        themeMode: ThemeMode.system,
        theme: state.theme,
        debugShowCheckedModeBanner: false,
        // navigatorObservers: [observer],
        home: const HomeScreen(),
        // home: const SplashPage(isHome: true),
        routes: PageRoutes.routes,
      );
    });
  }
}
