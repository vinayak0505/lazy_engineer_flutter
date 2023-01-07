import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';

class TileView extends StatelessWidget {
  const TileView({
    super.key,
    this.image,
    required this.child,
    this.pages,
    this.fit = BoxFit.fill,
    this.height = 120,
    this.width = 90,
    this.onPressed,
  });
  final String? image;
  final BoxFit fit;
  final double height;
  final double width;
  final int? pages;
  final Widget child;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: kRoundedContainer,
        child: Row(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImage(
                  image: image,
                  height: height,
                  width: width,
                  boxFit: fit,
                  radius: kRoundedRectangleRadius,
                  onlyLeft: true,
                ),
                if (pages != null)
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      '$pages pages',
                      style: theme.textTheme.caption?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  )
                else
                  const SizedBox(),
              ],
            ),
            child,
          ],
        ),
      ),
    );
  }
}
