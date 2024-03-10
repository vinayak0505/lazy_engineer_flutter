import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lazy_engineer/assets/images.dart';

class CustomImage extends StatelessWidget {
  final double? height;
  final double? width;
  final double radius;
  final bool disableImage;
  final bool onlyTop;
  final bool onlyLeft;
  final bool needFrameBuilder;
  final bool isBorder;
  final String? image;
  final String? networkImage;
  final String? placeHolder;
  final File? file;
  final Color? color;
  final Color borderColor;
  final BoxFit boxFit;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  const CustomImage({
    super.key,
    this.image,
    this.networkImage,
    this.file,
    this.height,
    this.width,
    this.radius = 0,
    this.disableImage = false,
    this.onlyTop = false,
    this.onlyLeft = false,
    this.needFrameBuilder = true,
    this.isBorder = false,
    this.boxFit = BoxFit.contain,
    this.color,
    this.borderColor = Colors.grey,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.placeHolder,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: disableImage ? 0.4 : 1,
      child: Container(
        margin: margin,
        padding: padding,
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          border: isBorder ? Border.all(color: borderColor) : null,
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
        ),
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
          child: () {
            if (file != null) {
              return _fileImage();
            } else if (networkImage != null) {
              return _networkImage();
            } else if (image == null) {
              return _noImage();
            } else if (image!.split('.').last == 'svg') {
              return _svgImage();
            } else {
              return _assetImage();
            }
          }(),
        ),
      ),
    );
  }

  Widget _svgImage() {
    return SvgPicture.asset(
      image!,
      width: width,
      height: height,
      fit: boxFit,
    );
  }

  Widget _assetImage() {
    return Image.asset(
      image!,
      height: height,
      width: width,
      fit: boxFit,
    );
  }

  Widget _networkImage() {
    return Image.network(
      networkImage!,
      height: height,
      width: width,
      fit: boxFit,
      loadingBuilder: (
        BuildContext context,
        Widget child,
        ImageChunkEvent? loadingProgress,
      ) {
        if (loadingProgress == null) return child;
        return Center(
          child: Container(
            height: height,
            width: width,
            alignment: Alignment.center,
            child: CircularProgressIndicator(
              color: Colors.blueGrey,
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
            ),
          ),
        );
      },
      errorBuilder: (_, __, ___) => Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        child: Image.asset(
          placeHolder ?? AppImages.placeholder,
          height: height,
          width: width,
          fit: boxFit,
        ),
      ),
      frameBuilder: needFrameBuilder
          ? (context, child, frame, wasSynchronouslyLoaded) {
              if (wasSynchronouslyLoaded) return child;
              return AnimatedOpacity(
                opacity: frame == null ? 0 : 1,
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease,
                child: child,
              );
            }
          : null,
    );
  }

  Widget _fileImage() {
    return Image.file(
      file!,
      width: width,
      height: height,
      fit: boxFit,
    );
  }

  Widget _noImage() {
    return Image.asset(
      AppImages.placeholder,
      height: height,
      width: width,
      fit: boxFit,
    );
  }
}
