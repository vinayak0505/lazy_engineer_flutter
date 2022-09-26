import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/config/theme/app_theme.dart';
import 'package:lazy_engineer/screens/AccountsScreen/profile_screen/data/repo/profile_repository.dart';
import 'package:lazy_engineer/screens/AccountsScreen/profile_screen/ui/edit_profile_screen.dart';
import 'package:lazy_engineer/screens/components/custom_icon.dart';
import 'package:lazy_engineer/screens/components/custom_image.dart';
import 'package:lazy_engineer/screens/components/failiure_screen.dart';
import 'package:lazy_engineer/screens/components/loading_screen.dart';
import '../../../../assets/constants/strings.dart';
import '../logic/profile_cubit.dart';
import 'header_design.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    bool isEdit = false;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: BlocProvider(
        create: (context) => ProfileCubit(ProfileRepository()),
        child: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            return state.when(
                profileFailure: (e) => FailureScreen(e),
                profileLoading: () => const LoadingScreen(),
                profileSuccess: (data) => ListView(children: [
                      Stack(children: [
                        SizedBox(
                          width: screenWidth,
                          height: 110,
                          child: CustomPaint(painter: RPSCustomPainter()),
                        ),
                        CustomImage(
                          image: data.userPic ?? AppImages.anonymousProfile,
                          height: 110,
                          width: 110,
                          radius: 55,
                          margin: const EdgeInsets.only(top: 50, left: 10),
                        ),
                        Positioned(
                          top: 70,
                          left: 130,
                          child: Text(
                            data.userName ?? '',
                            style: theme.textTheme.headline4
                                ?.copyWith(color: Colors.white, fontSize: 32),
                          ),
                        ),
                      ]),
                      Container(
                        alignment: Alignment.topRight,
                        padding: const EdgeInsets.only(right: 16),
                        child: IconButton(
                          onPressed: () {
                            isEdit = true;
                          },
                          icon: const CustomIcon(
                            AppIcons.editIcon,
                          ),
                        ),
                      ),
                      !isEdit ? const ProfileView() : const EditProfileView()
                    ]),
                editFailure: (e) => const SizedBox(),
                editLoading: () => const SizedBox(),
                editSuccess: (data) => const SizedBox());
          },
        ),
      ),
    );
  }
}

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Student of B.Tech. CSE 3rd year',
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 16),
          Text('Guru Tegh Bahadur Institute of Technology',
              style: theme.textTheme.titleMedium),
          Text('Delhi, India', style: theme.textTheme.bodyMedium),
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
          userUploadDescription(),
          const SizedBox(height: 16),
          Text(
            contact,
            style: theme.textTheme.headline6,
          ),
          const SizedBox(height: 6),
          contactRow(AppIcons.mailIcon, email, 'harmanjaggs@gmail.com', theme),
          contactRow(AppIcons.mobileIcon, mobile, '91+ 9873424386', theme),
          const SizedBox(height: 14),
          Text(
            education,
            style: theme.textTheme.headline6,
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'Guru Tegh Bahadur Institute of Technology B. Tegh, Computer Science 2019 - 2023',
              style: theme.textTheme.bodyLarge,
            ),
          ),
          const SizedBox(height: 16),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(experienceLevel, style: theme.textTheme.headline6),
            Text('Internship', style: theme.textTheme.bodyLarge)
          ]),
          const SizedBox(height: 16),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(jobType, style: theme.textTheme.headline6),
            Text('Internship', style: theme.textTheme.bodyLarge)
          ]),
          const SizedBox(height: 16),
          Text(location, style: theme.textTheme.headline6),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text('B-165, Phase 1, Ashok Vihar, Delhi - 110052',
                style: theme.textTheme.bodyLarge),
          )
        ],
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

  Widget contactRow(String icon, String title, String body, ThemeData theme) {
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
