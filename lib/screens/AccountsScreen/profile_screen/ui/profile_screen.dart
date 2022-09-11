import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/screens/components/custom_icon.dart';
import '../../../../assets/constants/strings.dart';
import '../../../../model/user.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              GestureDetector(
                onTap: () {},
                child: const CustomIcon(AppIcons.editIcon),
              ),
              const SizedBox(height: 16),
              Text(
                User.dummy().userName,
                style: theme.textTheme.headlineLarge,
              ),
              Text( 
                'Student of B.Tech. CSE 3rd year',
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
              Text('Guru Tegh Bahadur Institute of Technology',
                  style: theme.textTheme.titleMedium),
              Text('Delhi, India', style: theme.textTheme.bodyMedium),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {},
                child: Text(
                  showMoreC,
                  style: theme.textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                upload,
                style: theme.textTheme.headline6,
              ),
              const SizedBox(height: 16),
              userUploadDescription(),
              const SizedBox(height: 16),
              Text(
                contact,
                style: theme.textTheme.headline6,
              ),
              contactRow(AppIcons.mailIcon, email, 'harmanjaggs@gmail.com'),
              contactRow(AppIcons.mobileIcon, mobile, '91+ 9873424386'),
              Text(
                education,
                style: theme.textTheme.headline6,
              ),
              Text(
                'Guru Tegh Bahadur Institute of Technology B. Tegh, Computer Science 2019 - 2023',
                style: theme.textTheme.bodyLarge,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(experienceLevel, style: theme.textTheme.headline6),
                Text('Internship', style: theme.textTheme.bodyLarge)
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(jobType, style: theme.textTheme.headline6),
                Text('Internship', style: theme.textTheme.bodyLarge)
              ]),
              Text(location, style: theme.textTheme.headline6),
              Text('B-165, Phase 1, Ashok Vihar, Delhi - 110052',
                  style: theme.textTheme.bodyLarge)
            ]),
      ),
    );
  }

  Widget userUploadDescription() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(children: const [
          Text('10'),
          SizedBox(height: 4),
          Text(notes),
        ]),
        Column(children: const [
          Text('2'),
          SizedBox(height: 4),
          Text(files),
        ]),
        Column(children: const [
          Text('2'),
          SizedBox(height: 4),
          Text(paper),
        ]),
        Column(children: const [
          Text('2'),
          SizedBox(height: 4),
          Text(book),
        ]),
        Column(children: const [
          Text('5'),
          SizedBox(height: 4),
          Text(jobRequest),
        ]),
      ],
    );
  }

  Widget contactRow(String icon, String title, String body) {
    ThemeData theme = ThemeData.fallback();
    return Row(
      children: [
        CustomIcon(icon),
        Column(
          children: [
            Text(title, style: theme.textTheme.subtitle1),
            Text(body, style: theme.textTheme.subtitle2),
          ],
        )
      ],
    );
  }
}
