import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/features/components/expandable_widget.dart';
import 'package:lazy_engineer/features/components/failiure_screen.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/features/download/presentation/logic/download/download_cubit.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final searchDownloadController = TextEditingController();
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
                    CustomTextField(
                      controller: searchDownloadController,
                      suffixIcon: AppIcons.searchIcon,
                    ),
                    const SizedBox(height: 24),
                    ExpandableContainer(
                      heading: notes,
                      child: ListOfFile(data.notes),
                    ),
                    const SizedBox(height: 24),
                    ExpandableContainer(
                      heading: files,
                      child: ListOfFile(data.files),
                    ),
                    const SizedBox(height: 24),
                    ExpandableContainer(
                      heading: books,
                      child: ListOfFile(data.books),
                    ),
                    const SizedBox(height: 24),
                    ExpandableContainer(
                      heading: jobs,
                      child: ListOfFile(data.jobs),
                    ),
                    const SizedBox(height: 24),
                    ExpandableContainer(
                      heading: paper,
                      child: ListOfFile(data.papers),
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

class ListOfFile extends StatelessWidget {
  const ListOfFile(this.list, {super.key});
  final List<String> list;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return ListView.separated(
      padding: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 4,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => context.read<DownloadCubit>().downloadFile(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const CustomImage(
                  image: AppIcons.pdfIcon,
                  height: 40,
                  width: 40,
                ),
                const SizedBox(width: 16),
                Flexible(
                  child: Text(
                    list[index],
                    style: theme.textTheme.titleLarge,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (_, __) => const SizedBox(height: 2),
    );
  }
}