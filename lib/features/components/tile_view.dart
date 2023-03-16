import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';

class TileView extends StatelessWidget {
  const TileView({
    super.key,
    required this.placeholder,
    required this.child,
    this.fit = BoxFit.fill,
    this.width = 90,
    this.image,
    this.pages,
    this.onPressed,
  });
  final String? image;
  final String placeholder;
  final BoxFit fit;
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
                  margin: const EdgeInsets.all(8),
                  networkImage: image,
                  placeHolder: placeholder,
                  width: width,
                  boxFit: fit,
                  isBorder: true,
                  radius: kRoundedRectangleRadius,
                  onlyLeft: true,
                ),
                if (pages != null)
                  Container(
                    decoration:
                        kRoundedContainer.copyWith(color: Colors.blueGrey),
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      '$pages pages',
                      style: theme.textTheme.bodySmall?.copyWith(
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
