import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lazy_engineer/assets/images.dart';

class CustomImage extends StatelessWidget {
  final double? height;
  final double? width;
  final bool disableImage;
  final bool? onlyTop, onlyLeft;
  final double? radius;
  final String? image;
  final File? file;
  final BoxFit? boxFit;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const CustomImage({
    Key? key,
    this.image,
    this.file,
    this.height,
    this.margin,
    this.padding,
    this.width,
    this.disableImage = false,
    this.onlyTop,
    this.radius,
    this.boxFit,
    this.onlyLeft,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: disableImage ? 0.4 : 1,
      child: Container(
        margin: margin ?? EdgeInsets.zero,
        padding: padding ?? EdgeInsets.zero,
        child: ClipRRect(
          borderRadius: onlyTop ?? false
              ? BorderRadius.only(
                  topLeft: Radius.circular(radius ?? 0),
                  topRight: Radius.circular(radius ?? 0),
                )
              : onlyLeft ?? false
                  ? BorderRadius.only(
                      topLeft: Radius.circular(radius ?? 0),
                      bottomLeft: Radius.circular(radius ?? 0),
                    )
                  : BorderRadius.circular(radius ?? 0),
          child: (file != null)
              ? Image.file(
                  file!,
                  width: width,
                  height: height,
                  fit: boxFit ?? BoxFit.contain,
                )
              : image != null
                  ? (image!.split('.').last == 'svg')
                      ? SvgPicture.asset(
                          image!,
                          width: width,
                          height: height,
                          fit: boxFit ?? BoxFit.contain,
                        )
                      : Image.asset(
                          image!,
                          height: height,
                          width: width,
                          fit: boxFit ?? BoxFit.contain,
                        )
                  : Image.asset(
                      AppImages.placeholder,
                      height: height,
                      width: width,
                      fit: boxFit ?? BoxFit.cover,
                    ),
        ),
      ),
    );
  }
}
