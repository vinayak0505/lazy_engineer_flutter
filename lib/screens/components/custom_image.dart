import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../assets/images.dart';

class CustomImage extends StatelessWidget {
  final double? height;
  final double? width;
  final bool? onlyTop;
  final double? radius;
  final String? svgImage;
  final String? pngImage;
  final BoxFit? boxFit;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const CustomImage({
    Key? key,
    this.height,
    this.margin,
    this.padding,
    this.width,
    this.svgImage,
    this.pngImage,
    this.onlyTop,
    this.radius,
    this.boxFit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        child: svgImage != null
            ? SvgPicture.asset(
                svgImage!,
                width: width,
                height: height,
                fit: boxFit ?? BoxFit.cover,
              )
            : pngImage != null
                ? Image.asset(
                    pngImage!,
                    height: height,
                    width: width,
                    fit: boxFit ?? BoxFit.cover,
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
