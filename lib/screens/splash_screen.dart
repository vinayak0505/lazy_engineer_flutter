import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../assets/animation.dart';
import '../config/route/routes.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key, this.isHome = false}) : super(key: key);

  final bool isHome;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          Animations.splash,
          repeat: false,
          onLoaded: (composition) {
            _splashScreen(context, composition.duration);
          },
        ),
      ),
    );
  }

  _splashScreen(BuildContext context, Duration duration) {
    if (isHome) {
      Future.delayed(
        duration,
        () => Navigator.pushReplacementNamed(context, PageRoutes.homeScreen),
      );
    }
  }
}
