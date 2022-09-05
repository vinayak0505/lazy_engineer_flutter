import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/config/route/routes.dart';
import 'package:lazy_engineer/screens/AccountsScreen/settings_screen/logic/settings_cubit.dart';
import 'package:lazy_engineer/screens/Authentication/data/repo/auth_repository.dart';
import 'package:lazy_engineer/screens/Authentication/logic/login_bloc/auth_cubit.dart';
import 'screens/HomeScreen/home_screen/data/repo/user_repository.dart';
import 'screens/HomeScreen/home_screen/logic/cubit/user_cubit.dart';
import 'config/theme/app_theme.dart';

GlobalKey<NavigatorState> mainNavigatorKey = GlobalKey<NavigatorState>();

// class ScrollBehaviorModified extends ScrollBehavior {
//   const ScrollBehaviorModified();

//   @override
//   ScrollPhysics getScrollPhysics(BuildContext context) {
//     return const AlwaysScrollableScrollPhysics();
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserCubit(UserRepository()),
        ),
        BlocProvider(create: (context) => AuthCubit(AuthRepository())),
        BlocProvider(create: (context) => SettingsCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, child) => child!,
        themeMode: ThemeMode.system,
        theme: AppThemes.appThemeData[AppTheme.lightTheme],
        navigatorKey: mainNavigatorKey,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
