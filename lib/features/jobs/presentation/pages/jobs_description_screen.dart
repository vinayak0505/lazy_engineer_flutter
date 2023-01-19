import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/config/theme/app_theme.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/features/jobs/data/models/job_response/job_response.dart';
import 'package:lazy_engineer/features/jobs/presentation/widgets/company_tag.dart';

class JobsDescriptionScreen extends StatelessWidget {
  const JobsDescriptionScreen(this.data, {super.key});
  final JobDetail? data;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
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
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            data?.title ?? '',
            style: theme.textTheme.headline5,
          ),
          const SizedBox(height: 18),
          CompanyTag(
            companyName: data?.company ?? '',
            icon: data?.imageLink,
            description: data?.location ?? '',
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const SizedBox(width: 16),
              Text(
                'Date Posted - ',
                style: theme.textTheme.bodyMedium
                    ?.copyWith(color: AppThemes.subTitleColor),
              ),
              Text(
                '${data?.datePosted}',
                style: theme.textTheme.bodyMedium
                    ?.copyWith(color: AppThemes.subTitleColor),
              ),
              // const SizedBox(width: 8),
              // Text(
              //   '${data!.noSuchMethod} applicants',
              //   style: theme.textTheme.bodyMedium
              //       ?.copyWith(color: AppThemes.subTitleColor),
              // )
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const SizedBox(width: 8),
              const CustomIcon(AppIcons.fullTimeIcon),
              const SizedBox(width: 12),
              Text(
                data?.experienceLevel ?? '',
                style: theme.textTheme.titleMedium,
              )
            ],
          ),
          const SizedBox(height: 16),
          // Row(
          //   children: [
          //     const SizedBox(width: 8),
          //     const CustomIcon(AppIcons.employeesIcon),
          //     const SizedBox(width: 12),
          //     Text(
          //       '${data.noOfEmployees} employees',
          //       style: theme.textTheme.titleMedium,
          //     )
          //   ],
          // ),
          // const SizedBox(height: 4),
          // if (data.isActivelyRecruiting ?? false)
          //   Row(
          //     children: [
          //       const SizedBox(width: 8),
          //       const CustomIcon(AppIcons.recruitingIcon),
          //       const SizedBox(width: 12),
          //       Text(
          //         'Actively recruiting',
          //         style: theme.textTheme.titleMedium,
          //       )
          //     ],
          //   ),
          // const SizedBox(height: 24),
          // Row(
          //   children: [
          //     const SizedBox(width: 8),
          //     Expanded(
          //       child: CustomButton.secondary(
          //         text: save,
          //         onPressed: () {},
          //       ),
          //     ),
          //     const SizedBox(width: 16),
          //     Expanded(
          //       child: CustomButton(
          //         text: apply,
          //         onPressed: () {},
          //       ),
          //     ),
          //     const SizedBox(width: 8),
          //   ],
          // ),
          // const SizedBox(height: 16),
          Text(
            jobDescription,
            style: theme.textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            data?.jobType ?? '',
            style: theme.textTheme.bodyMedium,
          ),
          // const SizedBox(height: 16),
          // Row(
          //   children: [
          // Text(payRange, style: theme.textTheme.headlineSmall),
          // const SizedBox(width: 32),
          // Text(
          //   'Rs. ${data.payRange?.low} - ${data.payRange?.high}',
          //   style: theme.textTheme.bodyText2,
          // ),
          // ],
          // ),
          const SizedBox(height: 16),
          Text(
            aboutTheCompany,
            style: theme.textTheme.headlineSmall,
          ),
          CompanyTag(
            icon: AppImages.google,
            companyName: data?.company ?? '',
            description: '${data?.location}',
            follow: true,
          ),
          Text(
            data?.aboutCompany ?? '',
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: 50),
          // Text(company, style: theme.textTheme.headlineSmall),
          // const SizedBox(height: 16),
          // SizedBox(
          //   height: 150,
          //   child: ListView.separated(
          //     shrinkWrap: true,
          //     scrollDirection: Axis.horizontal,
          //     itemCount: sliderImageList.length,
          //     itemBuilder: (context, index) => CustomImage(
          //       image: sliderImageList[index],
          //       height: 100,
          //       radius: kRoundedRectangleRadius,
          //     ),
          //     separatorBuilder: (_, __) => const SizedBox(width: 16),
          //   ),
          // ),
        ],
      ),
    );
  }
}
