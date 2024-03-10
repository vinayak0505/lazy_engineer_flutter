import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/custom_dropdown.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/features/components/multi_option_filter.dart';
import 'package:lazy_engineer/features/profile/data/models/profile_modal/profile_modal.dart';
import 'package:lazy_engineer/features/profile/presentation/cubit/edit_profile/edit_profile_cubit.dart';
import 'package:lazy_engineer/helper/input_validation.dart';

class EditProfileView extends StatelessWidget with InputValidationMixin {
  const EditProfileView(this.data, {super.key});
  final ProfileModal data;

//  fullName: string;
//     email: string;
//     designation: string | undefined;
//     company: string | undefined;
//     university: string | undefined;
//     bio: string | undefined;
//     imageLink: string | undefined;
//     linkedin: string | undefined;
//     github: string | undefined;
//     twitter: string | undefined;
//     instagram: string | undefined;
//     notesCount: number;
//     jobsCount: number;
//     booksCount: number;
//     papersCount: number;
//     filesCount: number;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final formGlobalKey = GlobalKey<FormState>();
    final fullNameController = TextEditingController(text: data.fullName);
    final emailController = TextEditingController(text: data.email);
    final designationController = TextEditingController(text: data.designation);
    final companyController = TextEditingController(text: data.company);
    final universityController = TextEditingController(text: data.university);
    final bioController = TextEditingController(text: data.bio);
    final linkedinController = TextEditingController(text: data.linkedin);
    final githubController = TextEditingController(text: data.github);
    final twitterController = TextEditingController(text: data.twitter);
    final instagramController = TextEditingController(text: data.instagram);
    // final ValueNotifier<List<String>> jobTypeValueList =
    //     ValueNotifier(List.empty(growable: true));
    // final ValueNotifier<List<String>> experienceLevelValueList =
    //     ValueNotifier(List.empty(growable: true));

    Future<void> onPress() async {
      if (formGlobalKey.currentState!.validate()) {
        final data = ProfileModal(
          fullName: fullNameController.text,
          email: emailController.text,
          designation: designationController.text,
          company: companyController.text,
          university: universityController.text,
          bio: bioController.text,
          linkedin: linkedinController.text,
          github: githubController.text,
          twitter: twitterController.text,
          instagram: instagramController.text,
        );
        BlocProvider(
          create: (context) => EditProfileCubit(),
          child: BlocListener<EditProfileCubit, EditProfileState>(
            listener: (context, state) {
              context.read<EditProfileCubit>().editData(data);
            },
          ),
        );
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: formGlobalKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(fullName, style: theme.textTheme.titleLarge),
            CustomTextField.secondary(
              controller: fullNameController,
              hintText: fullName,
              validator: usernameValidation,
            ),
            const SizedBox(height: 16.0),
            Text(description, style: theme.textTheme.titleLarge),
            const SizedBox(height: 16.0),
            CustomTextField.multiLine(
              controller: bioController,
              hintText: description,
            ),
            const SizedBox(height: 16.0),
            Text(
              education,
              style: theme.textTheme.headlineSmall,
            ),
            const SizedBox(height: 16.0),
            //* College
            Text(college, style: theme.textTheme.titleLarge),
            CustomTextField.secondary(
              controller: universityController,
              hintText: college,
              validator: (value) => nullCheckTextValidation(value, college),
            ),
            const SizedBox(height: 16.0),
            // Text(specialization, style: theme.textTheme.titleLarge),
            // const SizedBox(height: 12.0),
            // CustomDropdown(
            //   list: classList,
            //   hintText: classD,
            //   controller: classController,
            //   dropdownValue: data.userClass.toString(),
            //   validator: (value) => nullCheckTextValidation(
            //     value,
            //     classD,
            //   ),
            // ),
            // const SizedBox(height: 16),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Flexible(
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(semester, style: theme.textTheme.titleLarge),
            //           const SizedBox(height: 12),
            //           CustomDropdown(
            //             list: semesterList,
            //             keyList: semesterKeyList,
            //             hintText: semester,
            //             controller: semesterController,
            //             dropdownValue: semesterList[semesterIndex],
            //             validator: (value) => nullCheckTextValidation(
            //               value,
            //               semester,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     const SizedBox(width: 16),
            //     Flexible(
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(year, style: theme.textTheme.titleLarge),
            //           const SizedBox(height: 12),
            //           CustomDropdown(
            //             list: yearOfAdmissionList,
            //             hintText: yearOfAdmission,
            //             controller: yearOfAdmissionController,
            //             dropdownValue: data.yearOfAdmission.toString(),
            //             validator: (value) => nullCheckTextValidation(
            //               value,
            //               year,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            // const SizedBox(height: 16.0),
            // Text(
            //   experienceLevel,
            //   style: theme.textTheme.titleLarge,
            // ),
            // const SizedBox(height: 12.0),
            // MultiOptionFilter(
            //   list: experienceLevelList,
            //   initialValue: const ['Internship', 'Associate'],
            //   selected: experienceLevelValueList,
            // ),
            // const SizedBox(height: 16.0),
            // Text(
            //   jobType,
            //   style: theme.textTheme.titleLarge,
            // ),
            // const SizedBox(height: 12.0),
            // MultiOptionFilter(
            //   list: jobTypeList,
            //   selected: jobTypeValueList,
            // ),
            // const SizedBox(height: 16.0),
            Text(
              contact,
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(height: 16.0),
            CustomTextField(
              controller: emailController,
              hintText: email,
              prefixIcon: AppIcons.mailIcon,
              validator: (value) => nullCheckTextValidation(
                value,
                email,
              ),
            ),
            const SizedBox(height: 32),
            Center(
              child: CustomButton(
                onPressed: onPress,
                width: 150,
                text: submit,
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
