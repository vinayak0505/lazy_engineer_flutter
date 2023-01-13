import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/features/components/grid_card.dart';
import 'package:lazy_engineer/features/components/staggered_view.dart';
import 'package:lazy_engineer/navigation/routes.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
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
