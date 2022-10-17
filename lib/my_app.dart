import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/config/navigation/routes.dart';
import 'package:lazy_engineer/screens/AccountsScreen/settings_screen/logic/settings_cubit.dart';
import 'features/auth/data/repositories/auth_repository.dart';
import 'features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'features/layout_template/layout_template.dart';
import 'screens/HomeScreen/home_screen/data/repo/user_repository.dart';
import 'screens/HomeScreen/home_screen/logic/cubit/user_cubit.dart';
import 'config/theme/app_theme.dart';
import 'config/navigation/navigation_service.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => UserCubit(UserRepository())),
        BlocProvider(create: (context) => AuthCubit(AuthRepository())),
        BlocProvider(create: (context) => SettingsCubit()),
      ],
      child: Builder(builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          scrollBehavior: MyScrollBehavior(),
          themeMode: ThemeMode.system,
          theme: AppThemes.appThemeData[AppTheme.lightTheme],
          builder: (context, child) => LayoutTemplate(child: child!),
          navigatorKey: NavigationService().navigatorKey,
          onGenerateRoute: (settings) => RouteGenerator.generateRoute(
            settings,
            // context.read<AuthCubit>().getToken(),
            true
          ),
        );
      }),
    );
  }
}

class MyScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => { 
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}
