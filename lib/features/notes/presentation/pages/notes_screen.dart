import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/features/components/failiure_screen.dart';
import 'package:lazy_engineer/features/components/grid_card.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/features/components/search_bar.dart';
import 'package:lazy_engineer/features/components/staggered_view.dart';
import 'package:lazy_engineer/features/home/presentation/pages/home_screen_widget.dart';
import 'package:lazy_engineer/features/notes/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_response/note_response.dart';
import 'package:lazy_engineer/features/notes/data/repositories/notes_repository_impl.dart';
import 'package:lazy_engineer/features/notes/presentation/cubit/notes_cubit/notes_cubit.dart';
import 'package:lazy_engineer/features/notes/presentation/cubit/search_notes/search_notes_bloc.dart';
import 'package:lazy_engineer/navigation/routes.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    final FocusNode focusNode = FocusNode();
    return BlocProvider(
      create: (context) => NotesCubit(NotesRepositoryImpl()),
      child: BlocBuilder<NotesCubit, NotesState>(
        builder: (context, state) {
          return state.when(
            loading: () => const HomeScreenWidget([LoadingScreen()]),
            failure: (error) => HomeScreenWidget([FailureScreen(error)]),
            success: (data) {
              return HomeScreenWidget(
                [
                  BlocProvider(
                    create: (context) => SearchNotesBloc(data),
                    child: BlocBuilder<SearchNotesBloc, List<NoteDetail>>(
                      builder: (context, searchState) {
                        final cubit = context.read<SearchNotesBloc>();
                        return SearchBar(
                          key: ValueKey(searchController.text),
                          focusNode: focusNode,
                          searchController: searchController,
                          list: searchState.map((e) => e.title!).toList(),
                          onSearch: (search) => cubit.add(
                            SearchNotesEvent(search),
                          ),
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
                textFieldFilter: const [
                  'Subject',
                  'Unit',
                  'Chapter',
                  'Topic',
                ],
                singleOptionFilter: const [
                  'Smart Sort',
                  'Popular',
                  'Top Rated',
                  'Newest',
                ],
                applyFilter: (FilterRequest filterRequest) {
                  context.read<NotesCubit>().applyFilter(filterRequest);
                },
              );
            },
          );
        },
      ),
    );
  }
}
