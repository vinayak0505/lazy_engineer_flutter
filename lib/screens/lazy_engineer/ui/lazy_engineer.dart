import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/helper/snackbar.dart';

import '../../Authentication/logic/login_bloc/auth_cubit.dart';
import '../../Authentication/ui/login_screen.dart';
import '../../home_screen/ui/home_screen.dart';
import '../../splash_screen.dart';

class LazyEngineer extends StatelessWidget {
  const LazyEngineer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            Navigator.popUntil(context, (route) => false)
            state.whenOrNull(
              authorized: (e) => showSnackbar(context, 'Authorized'),
              unathorized: (e) => showSnackbar(context, 'Unathorized $e'),
            );
          },
          builder: (context, state) {
            return state.map(
              authorized: (c) => const HomeScreen(),
              unathorized: (c) => const LoginScreen(),
              initial: (c) => const SplashPage(),
            );
          },
        ),
      ),
    );
  }
}
