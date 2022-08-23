import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/config/route/routes.dart';
import 'package:lazy_engineer/screens/home_screen/bloc/user_cubit.dart';
import 'package:lazy_engineer/screens/home_screen/repo/user_repository.dart';
import 'package:lazy_engineer/screens/home_screen/ui/home_screen.dart';
import 'config/theme/app_theme.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserCubit(UserRepository()..getUser()),
        ),
      ],
      child: MaterialApp(
        builder: (context, child) => ScrollConfiguration(
          behavior: const ScrollBehaviorModified(),
          child: child!,
        ),
        navigatorKey: mainNavigatorKey,
        themeMode: ThemeMode.system,
        theme: AppThemes.appThemeData[AppTheme.lightTheme],
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
        // home: const SplashPage(isHome: true),
        routes: PageRoutes.routes,
      ),
    );
  }
}
