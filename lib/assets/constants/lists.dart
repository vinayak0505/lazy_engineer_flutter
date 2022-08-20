import 'package:flutter/cupertino.dart';
import 'package:lazy_engineer/screens/components/custom_image.dart';

import '../images.dart';
import 'categories_model.dart';

class HomeScreenList {
  static List<CategoriesModel> categoriesList = [
    CategoriesModel(
      subtitle: "Notes",
      description: "You can find handwriten notes from all students",
    ),
    CategoriesModel(
      subtitle: "Question Paper",
      description: "Last years Queation paper from all univercities",
    ),
    CategoriesModel(
      subtitle: "Practicle File",
      description: "See other sutudents practical file",
    ),
    CategoriesModel(
      subtitle: "Books",
      description: "Downlod books for free",
    ),
    CategoriesModel(
      subtitle: "Jobs",
      description: "Get all latest jobs post here",
    ),
  ];

  static List<Widget> sliderImageList = const [
    CustomImage(pngImage: AppImages.sliderImage),
    CustomImage(pngImage: AppImages.sliderImage),
    CustomImage(pngImage: AppImages.sliderImage),
    CustomImage(pngImage: AppImages.sliderImage),
    CustomImage(pngImage: AppImages.sliderImage),
  ];
}
