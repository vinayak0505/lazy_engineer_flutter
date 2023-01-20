import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/core/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/books/data/models/books_response/book_response.dart';
import 'package:lazy_engineer/features/books/data/repositories/books_repository_impl.dart';
import 'package:lazy_engineer/features/books/presentation/cubit/books_cubit/books_cubit.dart';
import 'package:lazy_engineer/features/books/presentation/widgets/book_data_box.dart';
import 'package:lazy_engineer/features/components/failiure_screen.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/features/components/search_bar/modals/search_enum.dart';
import 'package:lazy_engineer/features/components/search_bar/search_bar.dart';
import 'package:lazy_engineer/features/components/search_bar/search_notes/search_bloc.dart';
import 'package:lazy_engineer/features/components/tile_view.dart';
import 'package:lazy_engineer/features/home/presentation/pages/home_screen_widget.dart';
import 'package:lazy_engineer/navigation/routes.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BooksCubit(BooksRepositoryImpl()),
      child: BlocBuilder<BooksCubit, BooksState>(
        builder: (context, state) {
          return state.when(
            loading: () => const HomeScreenWidget(
              title: books,
              body: [LoadingScreen()],
            ),
            failure: (error) => HomeScreenWidget(
              title: notes,
              body: [FailureScreen(error)],
            ),
            success: (data) {
              return HomeScreenWidget(
                title: books,
                textFieldFilter: const [
                  'Semester',
                ],
                // singleOptionFilter: const [
                //   'Smart Sort',
                //   'Popular',
                //   'Top Rated',
                //   'Newest',
                // ],
                applyFilter: (FilterRequest filterRequest) {
                  context.read<BooksCubit>().applyFilter(filterRequest);
                },
                body: [
                  BlocProvider(
                    create: (_) => SearchBloc(data),
                    child: BlocBuilder<SearchBloc, List<dynamic>>(
                      builder: (searchContext, state) {
                        return SearchBar(
                          BlocProvider.of<SearchBloc>(searchContext),
                          SearchEnum.book,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  BookListView(data)
                ],
              );
            },
          );
        },
      ),
    );
  }
}

class BookListView extends StatelessWidget {
  const BookListView(this.data, {super.key});
  final List<BookDetail> data;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: data.length,
      itemBuilder: (context, index) => TileView(
        placeholder: AppImages.booksImage,
        image: data[index].imageLink,
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
      separatorBuilder: (context, index) => const SizedBox(
        height: 8,
      ),
    );
  }
}
