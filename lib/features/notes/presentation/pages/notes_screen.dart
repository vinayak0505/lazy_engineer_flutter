import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/features/components/failiure_screen.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/features/home/presentation/pages/home_screen_widget.dart';
import 'package:lazy_engineer/features/notes/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/notes/data/repositories/notes_repository_impl.dart';
import 'package:lazy_engineer/navigation/routes.dart';
import '../../../components/grid_card.dart';
import '../../../components/staggered_view.dart';
import '../cubit/notes_cubit/notes_cubit.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
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
                  CustomTextField(
                    controller: searchController,
                    suffixIcon: AppIcons.searchIcon,
                  ),
                  const SizedBox(height: 16),
                  StaggeredView(
                    data.result.map((element) {
                      return GridCard(
                          body: element.about ?? '',
                          image: '',
                          title: element.title ?? '');
                    }).toList(),
                    onTap: (context, index) {
                      context.push(
                        '${RouteGenerator.notesDescriptionRoute}/${index + 1}',
                      );
                    },
                  ),
                ],
                textFeildFilter: const [
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
