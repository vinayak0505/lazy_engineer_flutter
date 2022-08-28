import 'package:flutter/material.dart';
import 'package:lazy_engineer/screens/components/custom_text_field.dart';
import 'package:lazy_engineer/screens/components/filter_container.dart';
import '../../../assets/constants/lists.dart';
import '../../../assets/constants/strings.dart';
import '../../../assets/icons.dart';
import '../../components/custom_image.dart';
import '../../components/tile_view.dart';

class PracticleFileScreen extends StatelessWidget {
  const PracticleFileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchFileController = TextEditingController();
    ThemeData theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
            title: Center(
                child: Text(
              files,
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
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  FilterContainer(isMultiOption: true, data: multiOptionFileList),
                  const SizedBox(height: 8),
                  FilterContainer(isMultiOption: false, data: singleOptionFileList),
                  const SizedBox(height: 16),
                  CustomTextField(
                    controller: searchFileController,
                    suffixIcon: AppIcons.searchIcon,
                  ),
                  const SizedBox(height: 16),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: practicleFileList.length,
                    itemBuilder: (context, index) => TileView(
                      image: practicleFileList[index].image,
                      pages: practicleFileList[index].pages,
                      child: FileDataBox(
                        title: practicleFileList[index].title,
                        college: practicleFileList[index].college,
                        subject: practicleFileList[index].subject,
                        year: practicleFileList[index].year,
                      ),
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 8,
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class FileDataBox extends StatelessWidget {
  const FileDataBox(
      {Key? key,
      required this.subject,
      required this.college,
      required this.title,
      required this.year})
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
                      ?.copyWith(overflow: TextOverflow.ellipsis)),
              const SizedBox(height: 4),
              RichText(
                text: TextSpan(
                  style: theme.textTheme.bodyMedium,
                  children: <TextSpan>[
                    TextSpan(
                        text: subjectIntended,
                        style: theme.textTheme.subtitle2),
                    TextSpan(text: '$subject\n'),
                    TextSpan(
                        text: collegeIntended,
                        style: theme.textTheme.subtitle2),
                    TextSpan(text: '$college\n'),
                    TextSpan(
                        text: yearIntended,
                        style: theme.textTheme.subtitle2),
                    TextSpan(text: year.year.toString()),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
