import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/strings.dart' as string;
import 'package:lazy_engineer/assets/images.dart';

class AuthBackground extends StatelessWidget {
  const AuthBackground({super.key, this.image});
  final String? image;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Text(
              string.lazyEngineer,
              style: theme.textTheme.headline5?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 50),
          Image.asset(image ?? AppImages.authBackgroundImage)
        ],
      ),
    );
  }
}
