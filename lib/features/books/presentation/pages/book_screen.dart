import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/books/data/repositories/books_repository_impl.dart';
import 'package:lazy_engineer/features/books/presentation/cubit/books_cubit/books_cubit.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/features/components/failiure_screen.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/features/components/tile_view.dart';
import 'package:lazy_engineer/navigation/routes.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchBookController = TextEditingController();
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            books,
            style: theme.textTheme.headline4,
            textAlign: TextAlign.center,
          ),
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
            margin: EdgeInsets.only(right: 16),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CustomTextField(
                  controller: searchBookController,
                  suffixIcon: AppIcons.searchIcon,
                ),
                const SizedBox(height: 16),
                BlocProvider(
                  create: (context) => BooksCubit(BooksRepositoryImpl()),
                  child: BlocBuilder<BooksCubit, BooksState>(
                    builder: (context, state) {
                      return state.when(
                        loading: () => const LoadingScreen(),
                        failure: (e) => FailureScreen(e),
                        success: (data) {
                          return ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: data.length,
                            itemBuilder: (context, index) => TileView(
                              image: data[index].fileLink,
                              // pages: data[index].pages,
                              child: BookDataBox(
                                writers: data[index].writer ?? [],
                                bookName: data[index].title ?? '',
                                description: data[index].about ?? '',
                              ),
                              onPressed: () => context.push(
                                '${RouteGenerator.bookDescriptionRoute}/${index + 1}',
                                extra: data[index],
                              ),
                            ),
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              height: 8,
                            ),
                          );
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BookDataBox extends StatelessWidget {
  const BookDataBox({
    super.key,
    required this.writers,
    required this.bookName,
    required this.description,
  });
  final List<String> writers;
  final String bookName;
  final String description;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
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
