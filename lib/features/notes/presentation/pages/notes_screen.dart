import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/core/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/components/failiure_screen.dart';
import 'package:lazy_engineer/features/components/grid_card.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/features/components/search_bar/modals/search_enum.dart';
import 'package:lazy_engineer/features/components/search_bar/search_bar.dart';
import 'package:lazy_engineer/features/components/search_bar/search_notes/search_bloc.dart';
import 'package:lazy_engineer/features/components/staggered_view.dart';
import 'package:lazy_engineer/features/home/presentation/pages/home_screen_widget.dart';
import 'package:lazy_engineer/features/notes/data/repositories/notes_repository_impl.dart';
import 'package:lazy_engineer/features/notes/presentation/cubit/notes_cubit/notes_cubit.dart';
import 'package:lazy_engineer/navigation/routes.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(NotesRepositoryImpl()),
      child: BlocBuilder<NotesCubit, NotesState>(
        builder: (context, state) {
          return state.when(
            loading: () => const HomeScreenWidget(
              title: notes,
              body: [LoadingScreen()],
            ),
            failure: (error) => HomeScreenWidget(
              title: notes,
              body: [FailureScreen(error)],
            ),
            success: (data) {
              return HomeScreenWidget(
                title: notes,
                textFieldFilter: const [
                  'Subject',
                  'Unit',
                  'Chapter',
                  'Topic',
                ],
                // singleOptionFilter: const [
                //   'Smart Sort',
                //   'Popular',
                //   'Top Rated',
                //   'Newest',
                // ],
                applyFilter: (FilterRequest filterRequest) {
                  context.read<NotesCubit>().applyFilter(filterRequest);
                },
                body: [
                  BlocProvider(
                    create: (_) => SearchBloc(data),
                    child: BlocBuilder<SearchBloc, List<dynamic>>(
                      builder: (searchContext, state) {
                        return SearchBar(
                          BlocProvider.of<SearchBloc>(searchContext),
                          SearchEnum.notes,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  StaggeredView(
                    data.map((element) {
                      return GridCard(
                        body: element.about ?? '',
                        title: element.title ?? '',
                        networkImage: element.imageLink,
                      );
                    }).toList(),
                    onTap: (context, index) {
                      context.push(
                        '${RouteGenerator.notesDescriptionRoute}/${index + 1}',
                        extra: data[index],
                      );
                    },
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
