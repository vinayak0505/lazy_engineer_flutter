import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';

import '../../../assets/constants/lists.dart';
import '../../../assets/icons.dart';
import '../../components/custom_image.dart';
import '../../components/custom_text_field.dart';
import '../../components/tile_view.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchBookController = TextEditingController();
    ThemeData theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
            title: Center(
                child: Text(
              jobs,
              style: theme.textTheme.headline4,
              textAlign: TextAlign.center,
            )),
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const CustomImage(
                AppIcons.backArrow,
                margin: EdgeInsets.only(left: 16),
              ),
            ),
            actions: const [
              CustomImage(
                AppIcons.filterIcon,
                boxFit: BoxFit.contain,
                margin: EdgeInsets.only(right: 16),
              ),
            ]),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              CustomTextField(
                controller: searchBookController,
                suffixIcon: AppIcons.searchIcon,
              ),
              const SizedBox(height: 16),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: jobList.length,
                itemBuilder: (context, index) => TileView(
                  // image: jobList[index].image,
                  fit: BoxFit.contain,
                  height: 100,
                  width: 70,
                  child: JobDataBox(
                    jobTitle: jobList[index].jobTitle,
                    location: jobList[index].location,
                    companyName: jobList[index].companyName,
                    date: jobList[index].date,
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 8,
                ),
              )
            ]),
          )),
        ));
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
    if (years != 0) return "$years years ago";
    int months = DateTime.now().month - date.month;
    if (months != 0) return "$months months ago";
    int days = DateTime.now().day - date.day;
    if (days != 0) return "$days days ago";
    return "Today";
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
