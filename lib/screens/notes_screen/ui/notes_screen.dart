import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/screens/components/custom_image.dart';
import 'package:lazy_engineer/screens/components/custom_text_field.dart';

import '../../../assets/constants/lists.dart';
import '../../components/grid_card.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    ThemeData theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
            title: Center(
                child: Text(
              notes,
              style: theme.textTheme.headline4,
              textAlign: TextAlign.center,
            )),
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const CustomImage(
                AppIcons.backArrow,
                margin: EdgeInsets.only(left: 16),
              ),
            ),
            actions: const [
              CustomImage(
                AppIcons.filterIcon,
                boxFit: BoxFit.contain,
                margin: EdgeInsets.only(right: 16),
              ),
            ]),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CustomTextField(
                    controller: searchController,
                    suffixIcon: AppIcons.searchIcon,
                  ),
                  const SizedBox(height: 16),
                  _staggeredView(),
                ],
              ),
            ),
          ),
        ));
  }

  Widget _staggeredView() {
    return MasonryGridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      itemCount: categoriesList.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {},
          child: GridCard(data: categoriesList[index]),
        );
      },
      // staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
    );
  }
}
