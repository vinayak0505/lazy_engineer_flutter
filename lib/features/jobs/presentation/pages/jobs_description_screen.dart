import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/config/theme/app_theme.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/failiure_screen.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/features/jobs/data/repositories/jobs_repository_impl.dart';
import 'package:lazy_engineer/features/jobs/presentation/cubit/jobs_detail_cubit/jobs_detail_cubit.dart';
import 'package:lazy_engineer/features/jobs/presentation/widgets/job_list.dart';
import '../../../../assets/constants/strings.dart';
import '../../../../assets/icons.dart';
import '../../../components/custom_icon.dart';
import '../widgets/company_tag.dart';

class JobsDescriptionScreen extends StatelessWidget {
  const JobsDescriptionScreen(this.id, {Key? key}) : super(key: key);
  final String? id;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const CustomIcon(
            AppIcons.backArrow,
            margin: EdgeInsets.only(left: 16),
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) => JobsDetailCubit(JobsRepositoryImpl(), id ?? ''),
        child: BlocBuilder<JobsDetailCubit, JobsDetailState>(
            builder: (context, state) {
          return state.when(
            failure: (e) => FailureScreen(e),
            loading: () => const LoadingScreen(),
            success: (data, rating) {
              return ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  Text(
                    data.title,
                    style: theme.textTheme.headline5,
                  ),
                  const SizedBox(height: 18),
                  CompanyTag(
                      companyName: data.company,
                      icon: AppImages.google,
                      description: data.location,),
                  const SizedBox(height: 8),
                  Row(children: [
                    const SizedBox(width: 16),
                    Text(
                      '${data.datePosted}',
                      style: theme.textTheme.bodyMedium
                          ?.copyWith(color: AppThemes.subTitleColor),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '${data.applicants} applicants',
                      style: theme.textTheme.bodyMedium
                          ?.copyWith(color: AppThemes.subTitleColor),
                    )
                  ],),
                  const SizedBox(height: 12),
                  Row(children: [
                    const SizedBox(width: 8),
                    const CustomIcon(AppIcons.fullTimeIcon),
                    const SizedBox(width: 12),
                    Text(data.experienceLevel,
                        style: theme.textTheme.titleMedium,)
                  ],),
                  const SizedBox(height: 4),
                  Row(children: [
                    const SizedBox(width: 8),
                    const CustomIcon(AppIcons.employeesIcon),
                    const SizedBox(width: 12),
                    Text('${data.noOfEmployees} employees',
                        style: theme.textTheme.titleMedium,)
                  ],),
                  const SizedBox(height: 4),
                  if (data.isActivelyRecruiting ?? false)
                    Row(children: [
                      const SizedBox(width: 8),
                      const CustomIcon(AppIcons.recruitingIcon),
                      const SizedBox(width: 12),
                      Text('Actively recruiting',
                          style: theme.textTheme.titleMedium,)
                    ],),
                  const SizedBox(height: 24),
                  Row(children: [
                    const SizedBox(width: 8),
                    Expanded(
                      child: CustomButton.secondary(
                        text: save,
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: CustomButton(
                        text: apply,
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(width: 8),
                  ],),
                  const SizedBox(height: 16),
                  Text(
                    jobDescription,
                    style: theme.textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    data.jobProfile,
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 16),
                  Row(children: [
                    Text(payRange, style: theme.textTheme.headlineSmall),
                    const SizedBox(width: 32),
                    Text(
                      'Rs. ${data.payRange?.low} - ${data.payRange?.high}',
                      style: theme.textTheme.bodyText2,
                    ),
                  ],),
                  const SizedBox(height: 16),
                  Text(
                    aboutTheCompany,
                    style: theme.textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 16),
                  CompanyTag(
                    icon: AppImages.google,
                    companyName: data.company,
                    description: '${data.noOfFollowers} followers',
                    follow: true,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    data.aboutCompany,
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 16),
                  Text(company, style: theme.textTheme.headlineSmall),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 150,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => CustomImage(
                        image: sliderImageList[index],
                        height: 100,
                        radius: kRoundedRectangleRadius,
                      ),
                      separatorBuilder: (_, __) => const SizedBox(width: 16),
                      itemCount: sliderImageList.length,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    similarCompanies,
                    style: theme.textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 16),
                  JobList(data: jobList),
                ],
              );
            },
          );
        },),
      ),
    );
  }
}
