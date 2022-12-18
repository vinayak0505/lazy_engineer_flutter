import 'package:flutter/material.dart';
import 'package:lazy_engineer/features/profile/data/models/profile_modal/profile_modal.dart';
import '../../../../assets/constants/strings.dart';
import '../../../../assets/icons.dart';
import '../../../../config/theme/app_theme.dart';
import '../../../components/custom_icon.dart';
import '../widgets/upload_view.dart';

class ProfileScreenView extends StatelessWidget {
  const ProfileScreenView(this.data, {Key? key}) : super(key: key);
  final ProfileModal data;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    int finalYear = (data.yearOfAdmission ?? 0) + 4;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data.userName.toString(),
            style: theme.textTheme.headlineLarge,
          ),
          const SizedBox(height: 8),
          Text(
            'Student of ${data.branch} ${data.semister} semister',
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 16),
          Text(
            data.universityName ?? '',
            style: theme.textTheme.titleMedium,
          ),
          Text(
            data.universityAddress ?? '',
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: 16),
          Text(
            data.userDescription ?? '',
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(height: 20),
          Center(
            child: GestureDetector(
              onTap: () {},
              child: Text(
                showMoreC,
                style: theme.textTheme.labelMedium?.copyWith(
                  color: AppThemes.subTitleColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            upload,
            style: theme.textTheme.headline6,
          ),
          const SizedBox(height: 8),
          UploadView(data.userUploads!),
          const SizedBox(height: 16),
          Text(
            contact,
            style: theme.textTheme.headline6,
          ),
          const SizedBox(height: 6),
          contactRow(
            AppIcons.mailIcon,
            email,
            data.contact?.email ?? '',
            theme,
          ),
          contactRow(
            AppIcons.mobileIcon,
            mobile,
            data.contact?.mobileNumber ?? '',
            theme,
          ),
          const SizedBox(height: 14),
          Text(
            education,
            style: theme.textTheme.headline6,
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.universityName.toString(),
                  style: theme.textTheme.bodyMedium,
                ),
                Text(
                  data.universityAddress.toString(),
                  style: theme.textTheme.bodyMedium,
                ),
                if (data.yearOfAdmission != null)
                  Text(
                    '${data.yearOfAdmission} - $finalYear',
                    style: theme.textTheme.bodyMedium,
                  ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(experienceLevel, style: theme.textTheme.headline6),
              Text(
                data.experienceLevel.toString(),
                style: theme.textTheme.bodyLarge,
              )
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(jobType, style: theme.textTheme.headline6),
              Text(
                data.jobType.toString(),
                style: theme.textTheme.bodyLarge,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(location, style: theme.textTheme.headline6),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              data.userAddress ?? '',
              style: theme.textTheme.bodyMedium,
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget contactRow(
    String icon,
    String title,
    String body,
    ThemeData theme,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
      child: Row(
        children: [
          CustomIcon(icon),
          const SizedBox(width: 18),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: theme.textTheme.subtitle1),
              Text(body, style: theme.textTheme.subtitle2),
            ],
          )
        ],
      ),
    );
  }
}
