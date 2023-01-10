import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/account/presentation/cubit/settings/settings_cubit.dart';
import 'package:lazy_engineer/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/navigation/routes.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
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
              onTap: () => context.push(RouteGenerator.profileRoute),
            ),
            ListTile(
              title: Text(
                changePassword,
                style: theme.textTheme.titleMedium,
              ),
              trailing: const CustomIcon(AppIcons.sideArrowIcon),
            ),
            ListTile(
              title: Text(addPaymentMethod, style: theme.textTheme.titleMedium),
              trailing: const CustomIcon(AppIcons.sideArrowIcon),
            ),
            ListTile(
              title: Text(
                pushNotifications,
                style: theme.textTheme.titleMedium,
              ),
              trailing: BlocBuilder<SettingsCubit, SettingsState>(
                  builder: (context, state) {
                return CupertinoSwitch(
                  value: state.pushNotification,
                  onChanged: (value) {
                    context.read<SettingsCubit>().togglePushNotification(value);
                  },
                  activeColor: theme.primaryColor,
                );
              },),
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
              },),
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
                onPressed: () async {
                  await context.read<AuthCubit>().signOut();
                  if(mounted) {
                    context.go(RouteGenerator.authRoute);
                  }
                },
                width: 130,
              ),
            )
          ],
        ),
      ),
    );
  }
}
