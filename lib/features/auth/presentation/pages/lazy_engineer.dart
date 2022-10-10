import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/features/auth/presentation/pages/register_screen.dart';
import 'package:lazy_engineer/screens/components/loading_screen.dart';
import '../auth_cubit/auth_cubit.dart';
import 'login_screen.dart';
import '../../../../screens/bottom_navigation/ui/bottom_nav_screen.dart';
import '../../../../screens/splash_screen.dart';

class LazyEngineer extends StatelessWidget {
  const LazyEngineer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
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
