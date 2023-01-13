import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/config/theme/app_theme.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    this.widget,
    this.overflow,
    this.text,
    this.color = AppThemes.primaryColor1,
    this.isBig = false,
    this.borderColor,
    this.constraints,
    this.width,
  });

  final void Function() onPressed;
  final TextOverflow? overflow;
  final Widget? widget;
  final String? text;
  final Color color;
  final bool isBig;
  final Color? borderColor;
  final double? width;
  final BoxConstraints? constraints;

  factory CustomButton.google({required void Function() onPressed}) {
    return CustomButton(
      onPressed: onPressed,
      widget: const CustomIcon(AppIcons.gPlusIcon),
      color: AppThemes.googlePlusColor,
    );
  }

  factory CustomButton.facebook({required void Function() onPressed}) {
    return CustomButton(
      onPressed: onPressed,
      widget: const CustomIcon(AppIcons.fIcon),
      color: AppThemes.facebookColor,
    );
  }

  factory CustomButton.secondary({
    required void Function() onPressed,
    BoxConstraints? constraints,
    String? text,
    double? width,
    Widget? widget,
    TextOverflow? overflow,
  }) {
    return CustomButton(
      onPressed: onPressed,
      constraints: constraints,
      text: text,
      overflow: overflow,
      width: width,
      widget: widget,
      color: AppThemes.secondColor,
      borderColor: AppThemes.primaryColor1,
    );
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
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
      child: Container(
        alignment: Alignment.center,
        height: isBig ? 48 : 34,
        width: width,
        constraints: constraints,
        child: widget ??
            (text != null
                ? Text(
                    text!,
                    style: theme.textTheme.button?.copyWith(
                      overflow: overflow,
                      fontWeight: FontWeight.w900,
                      color: borderColor ?? AppThemes.buttonText,
                      fontSize: 18,
                    ),
                  )
                : const SizedBox()),
      ),
    );
  }
}
