import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/features/components/expandable_widget.dart';
import 'package:lazy_engineer/features/components/failiure_screen.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/features/download/presentation/logic/download/download_cubit.dart';
import 'package:lazy_engineer/features/download/presentation/widgets/list_of_file.dart';
import 'package:lazy_engineer/features/download/presentation/widgets/list_of_search_files.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          download,
          style: theme.textTheme.headline4,
        ),
      ),
      body: BlocProvider(
        create: (context) => DownloadCubit(),
        child: BlocBuilder<DownloadCubit, DownloadState>(
          builder: (context, state) {
            return state.when(
              loading: () => const LoadingScreen(),
              failure: (e) => FailureScreen(e),
              success: (data) {
                return ListView(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 76),
                  children: [
                    ListOfSearchFiles(data),
                    const SizedBox(height: 16),
                    ExpandableContainer(
                      heading: notes,
                      child: ListOfFile(
                        listValue: data.notes.value,
                        listKey: data.notes.key,
                      ),
                    ),
                    const SizedBox(height: 24),
                    ExpandableContainer(
                      heading: files,
                      child: ListOfFile(
                        listValue: data.files.value,
                        listKey: data.files.key,
                      ),
                    ),
                    const SizedBox(height: 24),
                    ExpandableContainer(
                      heading: books,
                      child: ListOfFile(
                        listValue: data.books.value,
                        listKey: data.books.key,
                      ),
                    ),
                    const SizedBox(height: 24),
                    ExpandableContainer(
                      heading: paper,
                      child: ListOfFile(
                        listValue: data.papers.value,
                        listKey: data.papers.key,
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
