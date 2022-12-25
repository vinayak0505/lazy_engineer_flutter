import 'package:flutter/material.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';
import 'package:lazy_engineer/features/upload/presentation/widgets/full_screen_photo.dart';
import '../../../../assets/constants/decoration.dart';

class SliderView extends StatelessWidget {
  const SliderView(this.imageList, {Key? key}) : super(key: key);
  final List<String> imageList;
  @override
  Widget build(BuildContext context) {
    print('==========$imageList');
    return SizedBox(
      height: 200,
      child: PageView.builder(
        onPageChanged: (index) {},
        padEnds: true,
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
              padding: const EdgeInsets.symmetric(horizontal: 8),
              networkImage: imageList[index],
              radius: kRoundedRectangleRadius,
              boxFit: BoxFit.fitHeight,
            ),
          );
        },
      ),
    );
  }
}
