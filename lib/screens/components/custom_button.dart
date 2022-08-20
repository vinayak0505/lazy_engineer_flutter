import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget? child;
  final EdgeInsetsGeometry padding;
  final double hMargin;
  final String? label;
  final Color? buttonColor;
  final Color? textColor;
  final Color? borderColor;
  final double? elevation;
  final double radius;
  final Color? disabledColor;
  final double? textSize;
  final double? height;
  final ShapeBorder? shapeBorder;
  final bool animate;
  final double smoothing;

  const CustomButton({
    Key? key,
    this.onTap,
    this.child,
    this.padding = const EdgeInsets.all(16),
    this.hMargin = 0,
    this.label,
    this.buttonColor,
    this.textColor,
    this.borderColor,
    this.elevation,
    this.radius = 12,
    this.disabledColor,
    this.textSize,
    this.height,
    this.shapeBorder,
    this.animate = false,
    this.smoothing = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (animate) {
      return FadedSlideAnimation(
        beginOffset: const Offset(0, 2),
        endOffset: Offset.zero,
        child: _button(context),
      );
    } else {
      return _button(context);
    }
  }

  Padding _button(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: hMargin),
      child: MaterialButton(
        onPressed: onTap != null
            ? () {
                HapticFeedback.mediumImpact();
                onTap?.call();
              }
            : null,
        elevation: elevation ?? 0,
        padding: padding,
        height: height,
        shape: shapeBorder ??
            SmoothRectangleBorder(
              borderRadius: SmoothBorderRadius(
                cornerRadius: radius,
                cornerSmoothing: smoothing,
              ),
              side: BorderSide(
                color: borderColor ??
                    buttonColor ??
                    theme.primaryColor.withOpacity(0.2),
                width: 2,
              ),
            ),
        highlightColor: Colors.transparent,
        highlightElevation: 0,
        color: buttonColor ?? theme.primaryColor,
        textColor: textColor ?? theme.scaffoldBackgroundColor,
        disabledColor: disabledColor ?? theme.primaryColor.withOpacity(0.5),
        disabledTextColor: theme.scaffoldBackgroundColor,
        child: child ??
            Text(
              label ?? "next",
              style: theme.textTheme.button!.copyWith(
                  color: textColor ?? theme.scaffoldBackgroundColor,
                  fontSize: textSize),
            ),
      ),
    );
  }
}
