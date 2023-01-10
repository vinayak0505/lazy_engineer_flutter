import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/navigation/routes.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(account, style: theme.textTheme.headline4),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        child: ListView(
          children: [
            ListTile(
              leading: const CustomIcon(AppIcons.profileIcon),
              title: Text(profile, style: theme.textTheme.titleMedium),
              onTap: () =>
                  context.push(RouteGenerator.profileRoute),
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
                  style: theme.textTheme.titleMedium,),
            ),
            ListTile(
              leading: const CustomIcon(AppIcons.settingsIcon),
              title: Text(settings, style: theme.textTheme.titleMedium),
              onTap: () =>
                  context.push(RouteGenerator.settingsRoute),
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
