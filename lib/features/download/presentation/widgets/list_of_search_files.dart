import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/features/download/data/models/download_model/download_model.dart';
import 'package:lazy_engineer/features/download/data/models/file_model/file_model.dart';
import 'package:lazy_engineer/features/download/presentation/logic/search_download/search_download_bloc.dart';
import 'package:lazy_engineer/features/download/presentation/widgets/list_of_file.dart';

class ListOfSearchFiles extends StatelessWidget {
  const ListOfSearchFiles(this.data, {super.key});
  final DownloadModel data;
  @override
  Widget build(BuildContext context) {
    final searchDownloadController = TextEditingController();
    return BlocProvider(
      create: (context) => SearchDownloadBloc(data),
      child: BlocBuilder<SearchDownloadBloc, FileModel>(
        builder: (context, state) {
          searchDownloadController.addListener(() {
            context.read<SearchDownloadBloc>().add(
                  SearchDownloadEvent(searchDownloadController.text),
                );
          });
          return Column(
            children: [
              CustomTextField(
                controller: searchDownloadController,
                suffixIcon: AppIcons.searchIcon,
              ),
              const SizedBox(height: 16),
              ListOfFile(
                listKey: state.key,
                listValue: state.value,
              ),
            ],
          );
        },
      ),
    );
  }
}
