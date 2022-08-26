import 'package:flutter/material.dart';
import '../../../../assets/constants/decoration.dart';
import '../../../components/custom_image.dart';

class SliderView extends StatelessWidget {
  const SliderView({Key? key, required this.imageList}) : super(key: key);
  final List<String> imageList;
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    return SizedBox(
      height: 200,
      child: PageView.builder(
        onPageChanged: (index) {
          _selectedIndex = index;
        },
        padEnds: true,
        controller: PageController(viewportFraction: 0.8),
        itemCount: imageList.length,
        itemBuilder: (BuildContext context, int index) {
          return CustomImage(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            radius: kRoundedRectangleRadius,
            pngImage: imageList[index],
            boxFit: BoxFit.fitHeight,
          );
        },
      ),
    );
  }
}
