import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/navigation/routes.dart';
import 'features/account/presentation/cubit/settings/settings_cubit.dart';
import 'features/auth/data/repositories/auth_repository.dart';
import 'features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'features/layout_template/layout_template.dart';
import 'features/home/data/repositories/user_repository.dart';
import 'features/home/presentation/cubit/user/user_cubit.dart';
import 'config/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final route = RouteGenerator().goRouter;
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => UserCubit(UserRepository())),
        BlocProvider(create: (context) => AuthCubit(AuthRepository())),
        BlocProvider(create: (context) => SettingsCubit()),
      ],
      child: Builder(builder: (context) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerDelegate: route.routerDelegate,
          routeInformationParser: route.routeInformationParser,
          routeInformationProvider: route.routeInformationProvider,
          scrollBehavior: MyScrollBehavior(),
          themeMode: ThemeMode.system,
          theme: AppThemes.appThemeData[AppTheme.lightTheme],
          builder: (context, child) => LayoutTemplate(child: child!),
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
