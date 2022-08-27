import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/screens/Authentication/data/repo/auth_repository.dart';
import 'package:lazy_engineer/screens/Authentication/logic/login_bloc/auth_cubit.dart';
import 'package:lazy_engineer/screens/home_screen/ui/lazy_engineer.dart';
import 'config/route/routes.dart';
import 'screens/home_screen/data/repo/user_repository.dart';
import 'screens/home_screen/logic/cubit/user_cubit.dart';
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
          create: (context) => UserCubit(UserRepository()),
        ),
        BlocProvider(create: (context) => AuthCubit(AuthRepository()))
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
        home: const LazyEngineer(),
        routes: PageRoutes.routes,
      ),
    );
  }
}
