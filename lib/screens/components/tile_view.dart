import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/config/theme/app_theme.dart';
import 'package:lazy_engineer/screens/components/cached_image.dart';

class TileView extends StatelessWidget {
  const TileView({Key? key, this.image, required this.child, this.pages, this.fit = BoxFit.fill, this.height = 120, this.width = 90})
      : super(key: key);
  final String? image;
  final BoxFit fit;
  final double height;
  final double width;
  final int? pages;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      decoration: kRoundedContainer,
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Stack(alignment: Alignment.bottomRight, children: [
          CachedImage(
            image: image,
            height: height,
            width: width,
            boxFit: fit,
            radius: kRoundedRectangleRadius,
            onlyLeft: true,
          ),
          pages != null
              ? Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "$pages pages",
                    style: theme.textTheme.caption?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                )
              : const SizedBox(),
        ]),
        child,
      ]),
    );
  }
}
