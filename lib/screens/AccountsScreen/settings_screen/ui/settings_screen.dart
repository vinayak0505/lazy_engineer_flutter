import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/screens/components/custom_button.dart';

import '../../../../assets/icons.dart';
import '../../../../config/navigation/routes.dart';
import '../../../../features/auth/presentation/auth_cubit/auth_cubit.dart';
import '../../../components/custom_icon.dart';
import '../logic/settings_cubit.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          settings,
          style: theme.textTheme.headline5,
        ),
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
              title: Text(profile, style: theme.textTheme.titleMedium),
              trailing: const CustomIcon(AppIcons.sideArrowIcon),
              onTap: () =>
                  Navigator.pushNamed(context, RouteGenerator.profileScreen),
            ),
            ListTile(
              title: Text(changePassword, style: theme.textTheme.titleMedium),
              trailing: const CustomIcon(AppIcons.sideArrowIcon),
            ),
            ListTile(
              title: Text(addPaymentMethod, style: theme.textTheme.titleMedium),
              trailing: const CustomIcon(AppIcons.sideArrowIcon),
            ),
            ListTile(
              title:
                  Text(pushNotifications, style: theme.textTheme.titleMedium),
              trailing: BlocBuilder<SettingsCubit, SettingsState>(
                  builder: (context, state) {
                return CupertinoSwitch(
                  value: state.pushNotification,
                  onChanged: (value) {
                    context.read<SettingsCubit>().togglePushNotification(value);
                  },
                  activeColor: theme.primaryColor,
                );
              }),
            ),
            ListTile(
              title: Text(darkMode, style: theme.textTheme.titleMedium),
              trailing: BlocBuilder<SettingsCubit, SettingsState>(
                  builder: (context, state) {
                return CupertinoSwitch(
                  value: state.darkMode,
                  onChanged: (value) {
                    context.read<SettingsCubit>().toggleDarkMode(value);
                  },
                  activeColor: theme.primaryColor,
                );
              }),
            ),
            const Divider(),
            ListTile(
              title: Text(aboutUs, style: theme.textTheme.titleMedium),
              trailing: const CustomIcon(AppIcons.sideArrowIcon),
            ),
            ListTile(
              title: Text(privacyPolicy, style: theme.textTheme.titleMedium),
              trailing: const CustomIcon(AppIcons.sideArrowIcon),
            ),
            ListTile(
              title:
                  Text(termsAndConditions, style: theme.textTheme.titleMedium),
              trailing: const CustomIcon(AppIcons.sideArrowIcon),
            ),
            Center(
                child: CustomButton(
              text: logOut,
              onPressed: () {
                context.read<AuthCubit>().signOut();
                Navigator.pop(context);
              },
              width: 130,
            ))
          ],
        ),
      ),
    );
  }
}
