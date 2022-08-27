import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomImage extends StatelessWidget {
  final double? height;
  final double? width;
  final bool? onlyTop;
  final double? radius;
  final String image;
  final BoxFit? boxFit;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const CustomImage(
    this.image, {
    Key? key,
    this.height,
    this.margin,
    this.padding,
    this.width,
    this.onlyTop,
    this.radius,
    this.boxFit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isSvg = (image.split('.').last == 'svg');
    return Container(
      margin: margin ?? EdgeInsets.zero,
      padding: padding ?? EdgeInsets.zero,
      child: ClipRRect(
        borderRadius: onlyTop ?? false
            ? BorderRadius.only(
                topLeft: Radius.circular(radius ?? 0),
                topRight: Radius.circular(radius ?? 0),
              )
            : BorderRadius.circular(radius ?? 0),
        child: isSvg
            ? SvgPicture.asset(
                image,
                width: width,
                height: height,
                fit: boxFit ?? BoxFit.cover,
              )
            : Image.asset(
                image,
                height: height,
                width: width,
                fit: boxFit ?? BoxFit.cover,
              ),
      ),
    );
  }
}
