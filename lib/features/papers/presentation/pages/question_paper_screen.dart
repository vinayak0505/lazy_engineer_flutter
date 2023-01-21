import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/core/helper_function.dart';
import 'package:lazy_engineer/core/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/components/failiure_screen.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/features/components/search_bar/modals/search_enum.dart';
import 'package:lazy_engineer/features/components/search_bar/search_bar.dart';
import 'package:lazy_engineer/features/components/search_bar/search_notes/search_bloc.dart';
import 'package:lazy_engineer/features/components/tile_view.dart';
import 'package:lazy_engineer/features/home/presentation/pages/home_screen_widget.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_response/paper_response.dart';
import 'package:lazy_engineer/features/papers/data/repositories/papers_repository_impl.dart';
import 'package:lazy_engineer/features/papers/presentation/cubit/papers_cubit/papers_cubit.dart';
import 'package:lazy_engineer/features/papers/presentation/widgets/question_paper_data_box.dart';
import 'package:lazy_engineer/navigation/routes.dart';

class QuestionPaperScreen extends StatelessWidget {
  const QuestionPaperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PapersCubit(PapersRepositoryImpl()),
      child: BlocBuilder<PapersCubit, PapersState>(
        builder: (context, state) {
          return state.when(
            loading: () => const HomeScreenWidget(
              title: questionPaper,
              extraAppBarSize: 30,
              body: [LoadingScreen()],
            ),
            failure: (error) => HomeScreenWidget(
              title: questionPaper,
              extraAppBarSize: 30,
              body: [FailureScreen(error)],
            ),
            success: (data) {
              return HomeScreenWidget(
                title: questionPaper,
                extraAppBarSize: 30,
                textFieldFilter: const [
                  subject,
                  chapter,
                  topic,
                ],
                // singleOptionFilter: const [
                //   'Smart Sort',
                //   'Popular',
                //   'Top Rated',
                //   'Newest',
                // ],
                applyFilter: (FilterRequest filterRequest) {
                  context.read<PapersCubit>().applyFilter(filterRequest);
                },
                body: [
                  BlocProvider(
                    create: (_) => SearchBloc(data),
                    child: BlocBuilder<SearchBloc, List<dynamic>>(
                      builder: (searchContext, state) {
                        return SearchBar(
                          BlocProvider.of<SearchBloc>(searchContext),
                          SearchEnum.paper,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  QuestionPaperListView(data),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

class QuestionPaperListView extends StatelessWidget {
  const QuestionPaperListView(this.data, {super.key});
  final List<PaperDetail> data;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: data.length,
      itemBuilder: (context, index) => TileView(
        placeholder: AppImages.questionPaperImage,
        image: workingLink(data[index].imageLink),
        onPressed: () => context.push(
          '${RouteGenerator.questionPaperDescriptionRoute}/${index + 1}',
          extra: data[index],
        ),
        child: QuestionPaperDataBox(data[index]),
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 8),
    );
  }
}
