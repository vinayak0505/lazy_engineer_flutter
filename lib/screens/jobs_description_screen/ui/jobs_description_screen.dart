import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/config/theme/app_theme.dart';
import 'package:lazy_engineer/screens/components/cached_image.dart';
import 'package:lazy_engineer/screens/components/custom_button.dart';
import 'package:lazy_engineer/screens/jobs_screen/ui/components/job_list.dart';
import '../../../assets/icons.dart';
import '../../components/custom_image.dart';

class JobsDescriptionScreen extends StatelessWidget {
  const JobsDescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    int time = 11, applicants = 92;
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Software Engineer, Back End",
                style: theme.textTheme.headline5,
              ),
              const SizedBox(height: 18),
              const ComapanyTag(
                  companyName: "Google",
                  icon: AppImages.google,
                  description: "Gurugram, Haryana, India"),
              const SizedBox(height: 8),
              Row(children: [
                const SizedBox(width: 16),
                Text("$time hours ago",
                    style: theme.textTheme.bodyMedium
                        ?.copyWith(color: AppThemes.subTitleColor)),
                const SizedBox(width: 8),
                Text("$applicants applicants",
                    style: theme.textTheme.bodyMedium
                        ?.copyWith(color: AppThemes.subTitleColor))
              ]),
              const SizedBox(height: 12),
              Row(children: [
                const SizedBox(width: 8),
                const CustomIcon(AppIcons.fullTimeIcon),
                const SizedBox(width: 12),
                Text("Full-time", style: theme.textTheme.titleMedium)
              ]),
              const SizedBox(height: 4),
              Row(children: [
                const SizedBox(width: 8),
                const CustomIcon(AppIcons.employeesIcon),
                const SizedBox(width: 12),
                Text("10,001+ employees", style: theme.textTheme.titleMedium)
              ]),
              const SizedBox(height: 4),
              Row(children: [
                const SizedBox(width: 8),
                const CustomIcon(AppIcons.recruitingIcon),
                const SizedBox(width: 12),
                Text("Actively recruiting", style: theme.textTheme.titleMedium)
              ]),
              const SizedBox(height: 24),
              Row(children: [
                const SizedBox(width: 8),
                Expanded(
                    child:
                        CustomButton.secondary(text: "Save", onPressed: () {})),
                const SizedBox(width: 16),
                Expanded(child: CustomButton(text: "Apply", onPressed: () {})),
                const SizedBox(width: 8),
              ]),
              const SizedBox(height: 16),
              Text(
                "Job Description",
                style: theme.textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              Text(
                "THE BOOK THAT INSPIRED THE AWARD-WINNING MOVIE Nominated for 12 OSCARS including BEST PICTURE, BEST DIRECTOR and BEST ACTOR Winner of 5 BAFTAS including Best Actor, Best Director and Best Film Winner of the 2016 Golden Globes for Best Motion Picture - Drama, Best Actor - Drama, and Best Director The novel that inspired the epic new movie starring Leonardo DiCaprio and Tom Hardy. ",
                style: theme.textTheme.bodyMedium,
              ),
              const SizedBox(height: 16),
              Row(children: [
                Text("Pay range", style: theme.textTheme.headlineSmall),
                const SizedBox(width: 32),
                Text("Rs. 40k - 60k", style: theme.textTheme.bodyText2),
              ]),
              const SizedBox(height: 16),
              Text(
                "About the company",
                style: theme.textTheme.headlineSmall,
              ),
              const SizedBox(height: 16),
              const ComapanyTag(
                icon: AppImages.google,
                companyName: "Google",
                description: "22,113,199 followers",
                follow: true,
              ),
              const SizedBox(height: 16),
              Text(
                  "THE BOOK THAT INSPIRED THE AWARD-WINNING MOVIE Nominated for 12 OSCARS including BEST PICTURE, BEST DIRECTOR and BEST ACTOR Winner of 5 BAFTAS including Best Actor, Best Director and Best Film Winner of the 2016 Golden Globes for Best Motion Picture - Drama, Best Actor - Drama, and Best Director The novel that inspired the epic new movie starring Leonardo DiCaprio and Tom Hardy. ",
                  style: theme.textTheme.bodyMedium),
              const SizedBox(height: 16),
              Text("Company", style: theme.textTheme.headlineSmall),
              const SizedBox(height: 16),
              SizedBox(
                height: 150,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CachedImage(
                    image: sliderImageList[index],
                    height: 100,
                    radius: kRoundedRectangleRadius,
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 16,
                  ),
                  itemCount: sliderImageList.length,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Similar",
                style: theme.textTheme.headlineSmall,
              ),
              const SizedBox(height: 16),
              JobList(data: jobList),
            ]),
          ),
        ),
      ),
    );
  }
}

class ComapanyTag extends StatelessWidget {
  const ComapanyTag(
      {Key? key,
      required this.icon,
      required this.companyName,
      required this.description,
      this.follow = false})
      : super(key: key);
  final String icon, companyName, description;
  final bool follow;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Row(children: [
      const SizedBox(width: 8),
      CustomIcon(icon, height: 54, width: 54),
      const SizedBox(width: 12),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(companyName, style: theme.textTheme.bodyText1),
        Text(
          description,
          style:
              theme.textTheme.bodyText2?.copyWith(fontWeight: FontWeight.bold),
        ),
      ]),
      const Spacer(),
      follow
          ? Text("+ Follow", style: theme.textTheme.titleMedium)
          : const SizedBox(),
      const SizedBox(width: 16),
    ]);
  }
}
