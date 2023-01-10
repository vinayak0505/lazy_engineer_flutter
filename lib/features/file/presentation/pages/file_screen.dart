import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/features/components/failiure_screen.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/features/components/single_option_filter.dart';
import 'package:lazy_engineer/features/components/tile_view.dart';
import 'package:lazy_engineer/features/file/data/repositories/files_repository_impl.dart';
import 'package:lazy_engineer/features/file/presentation/cubit/files_cubit/files_cubit.dart';
import 'package:lazy_engineer/features/file/presentation/widgets/file_data_box.dart';
import 'package:lazy_engineer/navigation/routes.dart';

class FileScreen extends StatelessWidget {
  const FileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchFileController = TextEditingController();
    final singleFilterController = TextEditingController();
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          files,
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
            margin: EdgeInsets.only(right: 16),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SizedBox(height: 8),
                SingleOptionFilter(
                  controller: singleFilterController,
                  data: singleOptionFileList,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  controller: searchFileController,
                  suffixIcon: AppIcons.searchIcon,
                ),
                const SizedBox(height: 16),
                BlocProvider(
                  create: (context) => FilesCubit(FilesRepositoryImpl()),
                  child: BlocBuilder<FilesCubit, FilesState>(
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
                              // image: practicalFileList[index].link,
                              image: null,
                              child: FileDataBox(
                                title: data[index].title ?? '',
                                college: data[index].college ?? '',
                                subject: data[index].subject ?? '',
                                year: DateTime.now(),
                                // year: practicleFileList[index].semester ?? '',
                              ),
                              onPressed: () => context.push(
                                '${RouteGenerator.fileDescriptionRoute}/${index + 1}',
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
