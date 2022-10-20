import 'package:flutter/material.dart';
import 'package:lazy_engineer/config/navigation/routes.dart';

import '../../../../components/tile_view.dart';
import '../../data/modals/job_modal.dart';

class JobList extends StatelessWidget {
  const JobList({Key? key, required this.data}) : super(key: key);
  final List<JobModel> data;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: data.length,
      itemBuilder: (context, index) => TileView(
        // image: jobList[index].image,
        fit: BoxFit.contain,
        height: 100,
        width: 70,
        child: JobDataBox(
          jobTitle: data[index].jobTitle,
          location: data[index].location,
          companyName: data[index].companyName,
          date: data[index].date,
        ),
        onPressed: () =>
            Navigator.pushNamed(context, RouteGenerator.jobsDescriptionRoute),
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 8,
      ),
    );
  }
}

class JobDataBox extends StatelessWidget {
  const JobDataBox(
      {Key? key,
      required this.jobTitle,
      required this.companyName,
      required this.location,
      required this.date})
      : super(key: key);
  final String jobTitle, companyName, location;
  final DateTime date;

  String time() {
    int years = DateTime.now().year - date.year;
    if (years != 0) return '$years years ago';
    int months = DateTime.now().month - date.month;
    if (months != 0) return '$months months ago';
    int days = DateTime.now().day - date.day;
    if (days != 0) return '$days days ago';
    return 'Today';
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(jobTitle,
                  style: theme.textTheme.headline5,
                  overflow: TextOverflow.ellipsis),
              const SizedBox(height: 2),
              Text(companyName, style: theme.textTheme.bodyLarge),
              const SizedBox(height: 8),
              Text(
                location,
                style: theme.textTheme.bodyText2,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(time(), style: theme.textTheme.bodySmall),
              )
            ]),
      ),
    );
  }
}
