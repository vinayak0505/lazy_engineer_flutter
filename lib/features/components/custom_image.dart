import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lazy_engineer/assets/images.dart';

class CustomImage extends StatelessWidget {
  final double? height;
  final double? width;
  final bool disableImage;
  final bool onlyTop, onlyLeft;
  final double radius;
  final String? image;
  final File? file;
  final BoxFit boxFit;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  const CustomImage({
    Key? key,
    this.image,
    this.file,
    this.height,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.width,
    this.disableImage = false,
    this.onlyTop = false,
    this.radius = 0,
    this.boxFit = BoxFit.contain,
    this.onlyLeft = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: disableImage ? 0.4 : 1,
      child: Container(
        margin: margin,
        padding: padding,
        child: ClipRRect(
          borderRadius: onlyTop
              ? BorderRadius.only(
                  topLeft: Radius.circular(radius),
                  topRight: Radius.circular(radius),
                )
              : onlyLeft
                  ? BorderRadius.only(
                      topLeft: Radius.circular(radius),
                      bottomLeft: Radius.circular(radius),
                    )
                  : BorderRadius.circular(radius),
          child: (file != null)
              ? Image.file(
                  file!,
                  width: width,
                  height: height,
                  fit: boxFit,
                )
              : image != null
                  ? (image!.split('.').last == 'svg')
                      ? SvgPicture.asset(
                          image!,
                          width: width,
                          height: height,
                          fit: boxFit,
                        )
                      : Image.asset(
                          image!,
                          height: height,
                          width: width,
                          fit: boxFit,
                        )
                  : Image.asset(
                      AppImages.placeholder,
                      height: height,
                      width: width,
                      fit: boxFit,
                    ),
        ),
      ),
    );
  }
}
