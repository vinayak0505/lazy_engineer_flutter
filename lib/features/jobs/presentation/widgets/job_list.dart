import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/features/components/tile_view.dart';
import 'package:lazy_engineer/features/jobs/data/models/job_response/job_response.dart';
import 'package:lazy_engineer/navigation/routes.dart';

class JobList extends StatelessWidget {
  const JobList(this.data, {super.key});
  final List<JobDetail> data;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: data.length,
      itemBuilder: (context, index) {
        final jobData = data[index];
        return TileView(
          image: data[index].mediaLink,
          fit: BoxFit.contain,
          width: 70,
          child: JobDataBox(
            jobTitle: jobData.title ?? '',
            location: jobData.location ?? '',
            companyName: jobData.company ?? '',
            date: jobData.datePosted ?? '',
          ),
          onPressed: () => context.push(
            '${RouteGenerator.jobsDescriptionRoute}/${index + 1}',
            extra: data[index],
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 8,
      ),
    );
  }
}

class JobDataBox extends StatelessWidget {
  const JobDataBox({
    super.key,
    required this.jobTitle,
    required this.companyName,
    required this.location,
    required this.date,
  });
  final String jobTitle;
  final String companyName;
  final String location;
  final String date;

  // String time() {
  //   final int years = DateTime.now().year - date.year;
  //   if (years != 0) return '$years years ago';
  //   final int months = DateTime.now().month - date.month;
  //   if (months != 0) return '$months months ago';
  //   final int days = DateTime.now().day - date.day;
  //   if (days != 0) return '$days days ago';
  //   return 'Today';
  // }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              jobTitle,
              style: theme.textTheme.headline5,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 2),
            Text(companyName, style: theme.textTheme.bodyLarge),
            const SizedBox(height: 12),
            Text(
              location,
              style: theme.textTheme.bodyText2,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                date,
                style: theme.textTheme.overline,
              ),
            )
          ],
        ),
      ),
    );
  }
}
