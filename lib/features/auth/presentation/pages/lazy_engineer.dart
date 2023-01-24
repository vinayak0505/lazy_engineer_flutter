import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:lazy_engineer/features/auth/presentation/pages/splash_screen.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/navigation/routes.dart';

class LazyEngineer extends StatelessWidget {
  const LazyEngineer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          unathorized: (c) => context.go(RouteGenerator.authRoute),
          authorized: (c) => context.go(RouteGenerator.homeRoute),
        );
      },
      builder: (context, state) {
        return state.when(
          initial: () => const SplashPage(),
          loading: () => const LoadingScreen(),
          unathorized: (c) => const LoadingScreen(),
          authorized: (c) => const LoadingScreen(),
        );
      },
    );
  }
}
