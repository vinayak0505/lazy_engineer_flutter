import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/core/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/components/failiure_screen.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/features/components/search_bar/modals/search_enum.dart';
import 'package:lazy_engineer/features/components/search_bar/search_bar.dart';
import 'package:lazy_engineer/features/components/search_bar/search_notes/search_bloc.dart';
import 'package:lazy_engineer/features/home/presentation/pages/home_screen_widget.dart';
import 'package:lazy_engineer/features/jobs/data/repositories/jobs_repository_impl.dart';
import 'package:lazy_engineer/features/jobs/presentation/cubit/jobs_cubit/jobs_cubit.dart';
import 'package:lazy_engineer/features/jobs/presentation/widgets/job_list.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => JobsCubit(JobsRepositoryImpl()),
      child: BlocBuilder<JobsCubit, JobsState>(
        builder: (context, state) {
          return state.when(
            loading: () => const HomeScreenWidget(
              title: jobs,
              body: [LoadingScreen()],
            ),
            failure: (error) => HomeScreenWidget(
              title: notes,
              body: [FailureScreen(error)],
            ),
            success: (data) {
              return HomeScreenWidget(
                title: jobs,
                textFieldFilter: const [
                  company,
                  location,
                ],
                //Multioption
                // jobtype, experienceLevel

                // singleOptionFilter: const [
                //   'Smart Sort',
                //   'Popular',
                //   'Top Rated',
                //   'Newest',
                // ],
                applyFilter: (FilterRequest filterRequest) {
                  context.read<JobsCubit>().applyFilter(filterRequest);
                },
                body: [
                  BlocProvider(
                    create: (_) => SearchBloc(data),
                    child: BlocBuilder<SearchBloc, List<dynamic>>(
                      builder: (searchContext, state) {
                        return SearchBar(
                          BlocProvider.of<SearchBloc>(searchContext),
                          SearchEnum.jobs,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  JobList(data)
                ],
              );
            },
          );
        },
      ),
    );
  }
}
