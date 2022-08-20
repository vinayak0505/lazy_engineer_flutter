import 'package:animations/animations.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final GestureTapCallback? onTap;
  final VoidCallback? onOpenPage;
  final bool showShadow;
  final double? radius;
  final double? innerRadius;
  final Color? color;
  final Color? borderColor;
  final double? width;
  final bool? isSelected;
  final bool showCheck;
  final Widget? openPage;
  final double smoothing;

  const CustomCard({
    required this.child,
    this.margin,
    this.padding,
    this.onTap,
    this.showShadow = false,
    this.radius,
    this.color,
    this.borderColor,
    this.width,
    this.isSelected,
    this.showCheck = true,
    Key? key,
    this.openPage,
    this.onOpenPage,
    this.smoothing = 1,
    this.innerRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    if (onTap != null) {
      return GestureDetector(
        onTap: () {
          HapticFeedback.mediumImpact();
          onTap?.call();
        },
        child: _child(theme),
      );
    } else {
      return _child(theme);
    }
  }

  Widget _child(ThemeData theme) {
    return Stack(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: width,
          decoration: ShapeDecoration(
            color: color ?? theme.scaffoldBackgroundColor,
            shape: _shape(theme),
            shadows: [
              if (showShadow)
                BoxShadow(
                  color: theme.dividerColor,
                  blurRadius: 5,
                  spreadRadius: 0.2,
                ),
            ],
          ),
          margin: margin ?? const EdgeInsets.only(top: 24),
          padding: padding ??
              const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: openPage != null
              ? OpenContainer(
                  tappable: false,
                  closedBuilder: (context, action) => InkWell(
                    onTap: () {
                      HapticFeedback.mediumImpact();
                      onOpenPage?.call();
                      action();
                    },
                    child: child,
                  ),
                  closedElevation: 0,
                  closedShape: _shape(theme, BorderSide.none, innerRadius),
                  openColor: theme.scaffoldBackgroundColor,
                  closedColor: color ?? theme.scaffoldBackgroundColor,
                  openBuilder: (context, action) => openPage!,
                )
              : child,
        ),
        if (isSelected != null && isSelected! && showCheck)
          PositionedDirectional(
            top: 32,
            end: 16,
            child: Icon(Icons.check_circle, color: theme.primaryColor),
          ),
      ],
    );
  }

  SmoothRectangleBorder _shape(ThemeData theme,
      [BorderSide? side, double? borderRadius]) {
    return SmoothRectangleBorder(
      borderRadius: SmoothBorderRadius(
        cornerRadius: borderRadius ?? radius ?? 16,
        cornerSmoothing: smoothing,
      ),
      side: side ??
          BorderSide(
            color: isSelected != null && isSelected!
                ? theme.primaryColor
                : borderColor ?? theme.dividerColor,
            width: isSelected != null && isSelected! ? 2 : 1,
          ),
    );
  }
}
