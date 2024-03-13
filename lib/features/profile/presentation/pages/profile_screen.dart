import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/features/components/custom_icon.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';
import 'package:lazy_engineer/features/components/failiure_screen.dart';
import 'package:lazy_engineer/features/components/loading_screen.dart';
import 'package:lazy_engineer/features/profile/data/models/profile_modal/profile_modal.dart';
import 'package:lazy_engineer/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:lazy_engineer/features/profile/presentation/cubit/profile/profile_cubit.dart';
import 'package:lazy_engineer/features/profile/presentation/pages/edit_profile_screen.dart';
import 'package:lazy_engineer/features/profile/presentation/pages/profile_screen_view.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ProfileCubit(ProfileRepositoryImpl()),
        child: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            return state.when(
              failure: (e) => FailureScreen(e),
              loading: () => const LoadingScreen(),
              success: (isNotEdit, data) {
                final ProfileModal customData =
                    context.read<ProfileCubit>().userProfile!;
                return ListView(
                  shrinkWrap: true,
                  children: [
                    Stack(
                      children: [
                        const CustomImage(image: AppImages.header),
                        CustomImage(
                          image: ((customData.imageLink == null) || customData.imageLink!.isNotEmpty) ? customData.imageLink : AppImages.anonymousProfile,
                          height: 110,
                          width: 110,
                          radius: 55,
                          margin: const EdgeInsets.only(
                            top: 50,
                            left: 10,
                          ),
                        ),
                        Positioned(
                          right: 16,
                          top: 100,
                          child: IconButton(
                            onPressed: () {
                              return context
                                  .read<ProfileCubit>()
                                  .togleIsEditProfile();
                            },
                            icon: isNotEdit
                                ? const CustomIcon(AppIcons.editIcon)
                                : const CustomIcon(AppIcons.backArrow),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    if (isNotEdit)
                      ProfileScreenView(customData)
                    else
                      EditProfileView(customData),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
