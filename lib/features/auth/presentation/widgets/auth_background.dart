import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../assets/constants/strings.dart' as string;
import '../../../../assets/icons.dart';
import '../../../../assets/images.dart';

class AuthBackground extends StatelessWidget {
  const AuthBackground({super.key, this.image});
  final String? image;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(AppIcons.lazyEngineerIcon),
              const SizedBox(width: 16),
              Text(string.lazyEngineer,
                  style: theme.textTheme.headline5
                      ?.copyWith(fontWeight: FontWeight.w600))
            ],
          ),
          const SizedBox(height: 50),
          Image.asset(image ?? AppImages.authBackgroundImage)
        ],
      ),
    );
  }
}
