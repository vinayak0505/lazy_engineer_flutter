import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIcon extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final String image;
  final BoxFit? boxFit;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const CustomIcon(
    this.image, {
    Key? key,
    this.height,
    this.margin,
    this.padding,
    this.width,
    this.boxFit, this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isSvg = (image.split('.').last == 'svg');
    return Container(
      margin: margin ?? EdgeInsets.zero,
      padding: padding ?? EdgeInsets.zero,
      child: isSvg
          ? SvgPicture.asset(
              image,
              width: width,
              height: height,
              color: color,
              fit: boxFit ?? BoxFit.contain,
            )
          : Image.asset(
              image,
              height: height,
              width: width,
              fit: boxFit ?? BoxFit.contain,
            ),
    );
  }
}
