import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIcon extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final String image;
  final BoxFit boxFit;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  const CustomIcon(
    this.image, {
    Key? key,
    this.height,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.width,
    this.boxFit = BoxFit.contain,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isSvg = (image.split('.').last == 'svg');
    return Container(
      margin: margin,
      padding: padding,
      child: isSvg
          ? SvgPicture.asset(
              image,
              width: width,
              height: height,
              color: color,
              fit: boxFit,
            )
          : Image.asset(
              image,
              height: height,
              width: width,
              fit: boxFit,
            ),
    );
  }
}
