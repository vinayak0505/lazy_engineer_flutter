import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import '../../../../assets/constants/lists.dart';
import '../../../../assets/icons.dart';
import '../../../components/custom_icon.dart';
import '../../../components/custom_text_field.dart';
import 'components/job_list.dart';

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
            child: const CustomIcon(
              AppIcons.backArrow,
              margin: EdgeInsets.only(left: 16),
            ),
          ),
          actions: const [
            CustomIcon(
              AppIcons.filterIcon,
              boxFit: BoxFit.contain,
              margin: EdgeInsets.only(right: 16),
            ),
          ]),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            CustomTextField(
              controller: searchBookController,
              suffixIcon: AppIcons.searchIcon,
            ),
            const SizedBox(height: 16),
            JobList(data: jobList),
          ]),
        )),
      ),
    );
  }
}
