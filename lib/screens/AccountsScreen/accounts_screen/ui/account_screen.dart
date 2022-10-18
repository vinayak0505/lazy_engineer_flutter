import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import '../../../../assets/icons.dart';
import '../../../../config/navigation/routes.dart';
import '../../../components/custom_icon.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(account, style: theme.textTheme.headline5),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const CustomIcon(
            AppIcons.backArrow,
            margin: EdgeInsets.only(left: 16),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        child: ListView(
          children: [
            ListTile(
              leading: const CustomIcon(AppIcons.profileIcon),
              title: Text(profile, style: theme.textTheme.titleMedium),
              onTap: () =>
                  Navigator.pushNamed(context, RouteGenerator.profileRoute),
            ),
            ListTile(
              leading: const CustomIcon(AppIcons.mailIcon),
              title: Text(giveFeedback, style: theme.textTheme.titleMedium),
            ),
            ListTile(
              leading: const CustomIcon(AppIcons.notificationIcon),
              title: Text(notification, style: theme.textTheme.titleMedium),
            ),
            ListTile(
              leading: const CustomIcon(AppIcons.rateUsIcon),
              title: Text(rateUs, style: theme.textTheme.titleMedium),
            ),
            ListTile(
              leading: const CustomIcon(AppIcons.profileIcon),
              title: Text(invitePeopleToTheSite,
                  style: theme.textTheme.titleMedium),
            ),
            ListTile(
              leading: const CustomIcon(AppIcons.settingsIcon),
              title: Text(settings, style: theme.textTheme.titleMedium),
              onTap: () =>
                  Navigator.pushNamed(context, RouteGenerator.settingsRoute),
            ),
            ListTile(
              leading: const CustomIcon(AppIcons.starIcon),
              title: Text(whatsNew, style: theme.textTheme.titleMedium),
            ),
          ],
        ),
      ),
    );
  }
}
