import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/screens/splash_screen.dart';
import '../../../../config/navigation/routes.dart';
import '../../../../screens/components/loading_screen.dart';
import '../auth_cubit/auth_cubit.dart';

class LazyEngineer extends StatelessWidget {
  const LazyEngineer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is UnAuthorized) {
          print('unauthorized');
          Navigator.pushReplacementNamed(context, RouteGenerator.authScreen);
        }
        if (state is Authorized) {
          print('authorized');
          Navigator.pushReplacementNamed(context, RouteGenerator.homeScreen);
        }
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
