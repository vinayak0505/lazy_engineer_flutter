import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../../assets/constants/lists.dart';
import '../../../../assets/constants/strings.dart';
import '../../../../config/route/routes.dart';
import '../../../components/grid_card.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(upload, style: theme.textTheme.headline4),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 28),
            child: _staggeredView(),
          ),
        ),
      ),
    );
  }


  Widget _staggeredView() {
    return MasonryGridView.count(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      itemCount: categoriesList.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => _navigation(context, index),
          child: GridCard(data: categoriesList[index]),
        );
      },
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
    );
  }

  void _navigation(BuildContext context, int index) {
    String nav() {
      switch (index) {
        case 0:
          return RouteGenerator.uploadNotesScreen;
        case 1:
          return RouteGenerator.questionPaperScreen;
        case 2:
          return RouteGenerator.uploadFileScreen;
        case 3:
          return RouteGenerator.booksScreen;
        case 4:
          return RouteGenerator.jobsScreen;
        default:
          return RouteGenerator.homeScreen;
      }
    }

    Navigator.pushNamed(context, nav());
  }
}
