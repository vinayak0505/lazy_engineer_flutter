import 'package:flutter/material.dart';
import 'package:lazy_engineer/screens/components/custom_image.dart';
import '../../../../../assets/constants/decoration.dart';

class SliderView extends StatelessWidget {
  const SliderView({Key? key, required this.imageList}) : super(key: key);
  final List<String> imageList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        onPageChanged: (index) {
        },
        padEnds: true,
        controller: PageController(viewportFraction: 0.8),
        itemCount: imageList.length,
        itemBuilder: (BuildContext context, int index) {
          return CustomImage(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            image: imageList[index],
            radius: kRoundedRectangleRadius,
            boxFit: BoxFit.fitHeight,
          );
        },
      ),
    );
  }
}
