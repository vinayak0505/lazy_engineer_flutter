import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';
import 'package:lazy_engineer/features/upload/presentation/widgets/full_screen_photo.dart';

class SliderView extends StatelessWidget {
  const SliderView(this.imageList, {super.key});
  final List<String> imageList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.8),
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FullScreenPhoto(
                    networkImageList: imageList,
                    index: index,
                  ),
                ),
              );
            },
            child: CustomImage(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              networkImage: imageList[index],
              isBorder: true,
              borderColor: Colors.blueGrey,
              radius: kRoundedRectangleRadius,
              boxFit: BoxFit.fitHeight,
            ),
          );
        },
      ),
    );
  }
}
