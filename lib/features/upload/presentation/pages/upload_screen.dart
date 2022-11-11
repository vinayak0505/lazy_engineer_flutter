import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import '../../../../assets/constants/lists.dart';
import '../../../../assets/constants/strings.dart';
import '../../../../navigation/routes.dart';
import '../../../components/grid_card.dart';
import '../../../components/staggered_view.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(upload, style: theme.textTheme.headline4),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 28,
              horizontal: 16,
            ),
            child: StaggeredView(
              categoriesList
                  .map((element) => GridCard.category(element))
                  .toList(),
              onTap: (context, index) => _navigation(context, index),
            ),
          ),
        ),
      ),
    );
  }

  void _navigation(BuildContext context, int index) {
    String nav() {
      switch (index) {
        case 0:
          return RouteGenerator.uploadNotesRoute;
        case 1:
          return RouteGenerator.uploadPaperRoute;
        case 2:
          return RouteGenerator.uploadFileRoute;
        case 3:
          return RouteGenerator.uploadBookRoute;
        case 4:
          return RouteGenerator.uploadJobsRoute;
        default:
          return RouteGenerator.homeRoute;
      }
    }

    context.push(nav());
  }
}
