import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';

import '../../../../assets/constants/lists.dart';
import '../../../../assets/icons.dart';
import '../../../../config/navigation/routes.dart';
import '../../../components/custom_icon.dart';
import '../../../components/custom_text_field.dart';
import '../../../components/tile_view.dart';
class BookScreen extends StatelessWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchBookController = TextEditingController();
    ThemeData theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
            title: Center(
                child: Text(
              books,
              style: theme.textTheme.headline4,
              textAlign: TextAlign.center,
            )),
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
            child: Column(children: [
              CustomTextField(
                controller: searchBookController,
                suffixIcon: AppIcons.searchIcon,
              ),
              const SizedBox(height: 16),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: bookList.length,
                itemBuilder: (context, index) => TileView(
                  image: bookList[index].image,
                  pages: bookList[index].pages,
                  child: BookDataBox(
                    writers: bookList[index].writers,
                    bookName: bookList[index].bookName,
                    description: bookList[index].description,
                  ),
                  onPressed: () => Navigator.pushNamed(context, RouteGenerator.bookDescriptionRoute),
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 8,
                ),
              )
            ]),
          )),
        ));
  }
}

class BookDataBox extends StatelessWidget {
  const BookDataBox(
      {Key? key,
      required this.writers,
      required this.bookName,
      required this.description})
      : super(key: key);
  final List<String> writers;
  final String bookName, description;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    String allWriters = writers.toString();
    allWriters =
        'By- ${writers.toString().substring(1, writers.toString().length - 1)}';
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(allWriters.toUpperCase(), style: theme.textTheme.overline),
            const SizedBox(height: 8),
            Text(bookName, style: theme.textTheme.headline5),
            const SizedBox(height: 8),
            Text(description, style: theme.textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
