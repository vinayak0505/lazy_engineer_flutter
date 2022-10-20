import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/features/auth/presentation/pages/auth_screen.dart';
import 'package:lazy_engineer/screens/HomeScreen/home_screen/ui/home_screen.dart';
import 'package:lazy_engineer/screens/splash_screen.dart';
import '../../../../screens/components/loading_screen.dart';
import '../auth_cubit/auth_cubit.dart';

class LazyEngineer extends StatelessWidget {
  const LazyEngineer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SplashPage(),
          loading: () => const LoadingScreen(),
          unathorized: (c) => const AuthScreen(),
          authorized: (c) => const HomeScreen(),
        );
      },
    );
  }
}
