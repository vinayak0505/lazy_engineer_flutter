import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/svg.dart';

import '../../assets/images.dart';

class CustomImage extends StatelessWidget {
  final double? height;
  final double? width;
  final bool? onlyTop;
  final double? borderRadius;
  final double? innerBorderRadius;
  final Color? borderColor;
  final Color? bgColor;
  final String? svgImage;
  final String? pngImage;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const CustomImage({
    Key? key,
    this.height,
    this.bgColor,
    this.margin,
    this.padding,
    this.borderRadius,
    this.innerBorderRadius,
    this.borderColor,
    this.width,
    this.svgImage,
    this.pngImage,
    this.onlyTop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: margin ?? EdgeInsets.zero,
      padding: padding ?? EdgeInsets.zero,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: onlyTop ?? false
            ? BorderRadius.only(
                topLeft: Radius.circular(borderRadius ?? 12),
                topRight: Radius.circular(borderRadius ?? 12))
            : BorderRadius.circular(borderRadius ?? 12),
        border: Border.all(color: borderColor ?? Colors.transparent),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(innerBorderRadius ?? 12),
        child: svgImage != null
            ? SvgPicture.asset(
                svgImage!,
                width: width,
                height: height,
                // fit: BoxFit.fill,
              )
            : pngImage != null
                ? Image.asset(
                    pngImage!,
                    height: height,
                    width: width,
                    fit: BoxFit.fill,
                  )
                : Image.asset(
                    AppImages.placeholder,
                    height: height,
                    width: width,
                    fit: BoxFit.cover,
                  ),
      ),
    );
  }
}
