import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/core/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/components/failiure_screen.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/features/components/search_bar/modals/search_enum.dart';
import 'package:lazy_engineer/features/components/search_bar/search_bar.dart';
import 'package:lazy_engineer/features/components/search_bar/search_notes/search_bloc.dart';
import 'package:lazy_engineer/features/components/tile_view.dart';
import 'package:lazy_engineer/features/file/data/models/files_response/file_response.dart';
import 'package:lazy_engineer/features/file/data/repositories/files_repository_impl.dart';
import 'package:lazy_engineer/features/file/presentation/cubit/files_cubit/files_cubit.dart';
import 'package:lazy_engineer/features/file/presentation/widgets/file_data_box.dart';
import 'package:lazy_engineer/features/home/presentation/pages/home_screen_widget.dart';
import 'package:lazy_engineer/navigation/routes.dart';

class FileScreen extends StatelessWidget {
  const FileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilesCubit(FilesRepositoryImpl()),
      child: BlocBuilder<FilesCubit, FilesState>(
        builder: (context, state) {
          return state.when(
            loading: () => const HomeScreenWidget(
              title: files,
              body: [LoadingScreen()],
            ),
            failure: (error) => HomeScreenWidget(
              title: files,
              body: [FailureScreen(error)],
            ),
            success: (data) {
              return HomeScreenWidget(
                title: files,
                textFieldFilter: const [
                  'Subject',
                  'College',
                  'Semister',
                ],
                // singleOptionFilter: const [
                //   'Smart Sort',
                //   'Popular',
                //   'Top Rated',
                //   'Newest',
                // ],
                applyFilter: (FilterRequest filterRequest) {
                  context.read<FilesCubit>().applyFilter(filterRequest);
                },
                body: [
                  BlocProvider(
                    create: (_) => SearchBloc(data),
                    child: BlocBuilder<SearchBloc, List<dynamic>>(
                      builder: (searchContext, state) {
                        return SearchBar(
                          BlocProvider.of<SearchBloc>(searchContext),
                          SearchEnum.file,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  FileListView(data),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

class FileListView extends StatelessWidget {
  const FileListView(this.data, {super.key});
  final List<FileDetail> data;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: data.length,
      itemBuilder: (context, index) => TileView(
        child: FileDataBox(
          title: data[index].title ?? '',
          college: data[index].college ?? '',
          subject: data[index].subject ?? '',
          year: DateTime.now(),
        ),
        onPressed: () => context.push(
          '${RouteGenerator.fileDescriptionRoute}/${index + 1}',
          extra: data[index],
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 8),
    );
  }
}
