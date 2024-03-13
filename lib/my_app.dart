import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/config/theme/app_theme.dart';
import 'package:lazy_engineer/features/account/presentation/cubit/settings/settings_cubit.dart';
import 'package:lazy_engineer/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:lazy_engineer/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:lazy_engineer/features/layout_template/layout_template.dart';
import 'package:lazy_engineer/navigation/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final route = RouteGenerator().goRouter;
    return MultiBlocProvider(
      providers: [
        // BlocProvider(create: (context) => UserCubit(UserRepository())),
        BlocProvider(
          create: (context) => AuthCubit(AuthRepositoryImpl()),
        ),
        BlocProvider(create: (context) => SettingsCubit()),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerDelegate: route.routerDelegate,
            routeInformationParser: route.routeInformationParser,
            routeInformationProvider: route.routeInformationProvider,
            scrollBehavior: MyScrollBehavior(),
            theme: AppThemes().appThemeData[AppTheme.lightTheme],
            builder: (context, child) => GestureDetector(
              onTap: () {
                final currentFocus = FocusScope.of(context);
                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.focusedChild?.unfocus();
                }
              },
              child: LayoutTemplate(child: child!),
            ),
          );
        },
      ),
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
