import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/navigation/routes.dart';
import '../../../../assets/constants/lists.dart';
import '../../../components/grid_card.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            notes,
            style: theme.textTheme.headline4,
          ),
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const CustomIcon(
              AppIcons.backArrow,
              margin: EdgeInsets.only(left: 16),
            ),
          ),
          actions: const [
            CustomIcon(
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
      ),
    );
  }

  Widget _staggeredView() {
    return MasonryGridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      itemCount: notesList.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => context
              .push('${RouteGenerator.notesDescriptionRoute}/${index + 1}'),
          child: GridCard(data: notesList[index]),
        );
      },
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
    );
  }
}
