import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/helper/snackbar.dart';
import 'package:lazy_engineer/screens/components/loading_screen.dart';

import '../../Authentication/logic/login_bloc/auth_cubit.dart';
import '../../Authentication/ui/login_screen.dart';
import '../../bottom_navigation/ui/bottom_nav_screen.dart';
import '../../splash_screen.dart';

class LazyEngineer extends StatelessWidget {
  const LazyEngineer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          authorized: (e) => showSnackbar(context, 'Authorized'),
          unathorized: (e) => showSnackbar(context, 'Unathorized $e'),
        );
      },
      builder: (context, state) {
        return state.map(
          authorized: (c) => const BottomNavScreen(),
          unathorized: (c) => const LoginScreen(),
          loading: (c) => const LoadingScreen(),
          initial: (c) => const SplashPage(),
        );
      },
    );
  }
}
