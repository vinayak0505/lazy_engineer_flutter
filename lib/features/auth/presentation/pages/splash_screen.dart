import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import '../../../../assets/animation.dart';
import '../auth_cubit/auth_cubit.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isAuthorised = context.read<AuthCubit>().getToken();
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          Animations.splash,
          repeat: true,
        ),
      ),
    );
  }
}

// Scaffold(
//       body: Center(
//         child: Lottie.asset(
//           Animations.splash,
//           repeat: false,
//           onLoaded: (composition) {
//             // Future.delayed(composition.duration);
//             NavigationService().replace(
//               isAuthorised
//                   ? RouteGenerator.homeScreen
//                   : RouteGenerator.loginScreen,
//             );
//           },
//         ),
//       ),
//     );