import '../../screens/home_screen/data/modal/categories_model.dart';
import '../images.dart';

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

  static List<String> sliderImageList = const [
    AppImages.sliderImage,
    AppImages.sliderImage,
    AppImages.sliderImage,
    AppImages.sliderImage,
    AppImages.sliderImage,
  ];
}
