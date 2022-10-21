import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';

import '../../config/theme/app_theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.onPressed,
      this.text,
      this.icon,
      this.color = AppThemes.primaryColor1,
      this.isBig = false,
      this.borderColor,
      this.width})
      : super(key: key);

  final void Function() onPressed;
  final String? text;
  final String? icon;
  final Color color;
  final bool isBig;
  final Color? borderColor;
  final double? width;

  factory CustomButton.google({required void Function() onPressed}) {
    return CustomButton(
      onPressed: onPressed,
      icon: AppIcons.gPlusIcon,
      color: AppThemes.googlePlusColor,
    );
  }

  factory CustomButton.facebook({required void Function() onPressed}) {
    return CustomButton(
      onPressed: onPressed,
      icon: AppIcons.fIcon,
      color: AppThemes.facebookColor,
    );
  }

  factory CustomButton.secondary(
      {required void Function() onPressed, String? icon, String? text}) {
    return CustomButton(
      onPressed: onPressed,
      icon: icon,
      text: text,
      color: AppThemes.secondColor,
      borderColor: AppThemes.primaryColor1,
    );
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shadowColor: color,
        backgroundColor: color,
        side: BorderSide(color: borderColor ?? color),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(isBig ? 14 : 20),
        ),
      ),
      child: SizedBox(
        height: isBig ? 48 : 34,
        width: width,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) CustomIcon(icon!),
            if (icon != null && text != null) const Spacer(),
            if (text != null)
              Text(
                text!,
                style: theme.textTheme.button?.copyWith(
                  fontWeight: FontWeight.w900,
                  color: borderColor ?? AppThemes.buttonText,
                  fontSize: 18,
                ),
              ),
            if (icon != null && text != null) const Spacer(),
          ],
        ),
      ),
    );
  }
}
