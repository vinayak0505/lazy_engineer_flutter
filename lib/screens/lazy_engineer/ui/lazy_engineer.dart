import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        child: BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
          return state.map(
              authorized: (c) => const HomeScreen(),
              unathorized: (c) => const LoginScreen(),
              loading: (c) => const Center(child: CircularProgressIndicator()),
              initial: (c) => const SplashPage());
        }),
      ),
    );
  }
}
