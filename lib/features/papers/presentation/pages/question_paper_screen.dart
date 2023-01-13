import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/features/components/failiure_screen.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/features/components/tile_view.dart';
import 'package:lazy_engineer/features/papers/data/repositories/papers_repository_impl.dart';
import 'package:lazy_engineer/features/papers/presentation/cubit/papers_cubit/papers_cubit.dart';
import 'package:lazy_engineer/features/papers/presentation/widgets/question_paper_data_box.dart';
import 'package:lazy_engineer/navigation/routes.dart';

class QuestionPaperScreen extends StatelessWidget {
  const QuestionPaperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchQuestionPaperController =
        TextEditingController();
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          questionPaper,
          style: theme.textTheme.headline5,
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
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
                  controller: searchQuestionPaperController,
                  suffixIcon: AppIcons.searchIcon,
                ),
                const SizedBox(height: 16),
                BlocProvider(
                  create: (context) => PapersCubit(PapersRepositoryImpl()),
                  child: BlocBuilder<PapersCubit, PapersState>(
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
                              child: QuestionPaperDataBox(data[index]),
                              onPressed: () => context.push(
                                '${RouteGenerator.questionPaperDescriptionRoute}/${index + 1}', extra: data[index],
                              ),
                            ),
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 8),
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
