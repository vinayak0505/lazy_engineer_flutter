import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lazy_engineer/screens/components/custom_text_field.dart';

import '../../../config/route/routes.dart';
import '../../components/grid_card.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    ThemeData theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Notes", style: theme.textTheme.headline5),
        ),
        body: SafeArea(
          child: Column(
            children: [
              CustomTextField(controller: searchController),
              const SizedBox(height: 16),
              _staggeredView(),
            ],
          ),
        ));
  }

  Widget _staggeredView() {
    var categoriesList;
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
      // staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
    );
  }

  void _navigation(BuildContext context, int index) {
    String _nav() {
      switch (index) {
        case 0:
          return PageRoutes.notesScreen;
        case 1:
          return PageRoutes.questionPaperScreen;
        case 2:
          return PageRoutes.practicleFileScreen;
        case 3:
          return PageRoutes.booksScreen;
        case 4:
          return PageRoutes.jobsScreen;
        default:
          return PageRoutes.homeScreen;
      }
    }

    Navigator.pushNamed(context, _nav());
  }
}
