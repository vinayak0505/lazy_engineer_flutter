import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/features/components/single_option_filter.dart';
import 'package:lazy_engineer/navigation/routes.dart';
import '../../../../assets/constants/lists.dart';
import '../../../../assets/constants/strings.dart';
import '../../../../assets/icons.dart';
import '../../../components/custom_icon.dart';
import '../../../components/tile_view.dart';

class FileScreen extends StatelessWidget {
  const FileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchFileController = TextEditingController();
    TextEditingController singleFilterController = TextEditingController();
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            files,
            style: theme.textTheme.headline4,
          ),
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
          ],),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SizedBox(height: 8),
                SingleOptionFilter(
                  controller: singleFilterController,
                  data: singleOptionFileList,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  controller: searchFileController,
                  suffixIcon: AppIcons.searchIcon,
                ),
                const SizedBox(height: 16),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: practicalFileList.length,
                  itemBuilder: (context, index) => TileView(
                    image: practicalFileList[index].link,
                    child: FileDataBox(
                      title: practicalFileList[index].title,
                      college: practicalFileList[index].college ?? '',
                      subject: practicalFileList[index].subject ?? '',
                      year: DateTime.now(),
                      // year: practicleFileList[index].semester ?? '',
                    ),
                    onPressed: () => context.push(
                        '${RouteGenerator.fileDescriptionRoute}/${index + 1}',),
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 8,
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

class FileDataBox extends StatelessWidget {
  const FileDataBox(
      {Key? key,
      required this.subject,
      required this.college,
      required this.title,
      required this.year,})
      : super(key: key);
  final String title, subject, college;
  final DateTime year;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: theme.textTheme.headline5
                      ?.copyWith(overflow: TextOverflow.ellipsis),),
              const SizedBox(height: 4),
              RichText(
                text: TextSpan(
                  style: theme.textTheme.bodyMedium,
                  children: <TextSpan>[
                    TextSpan(
                        text: subjectIntended,
                        style: theme.textTheme.subtitle2,),
                    TextSpan(text: '$subject\n'),
                    TextSpan(
                        text: collegeIntended,
                        style: theme.textTheme.subtitle2,),
                    TextSpan(text: '$college\n'),
                    TextSpan(
                        text: yearIntended, style: theme.textTheme.subtitle2,),
                    TextSpan(text: year.year.toString()),
                  ],
                ),
              )
            ],),
      ),
    );
  }
}
