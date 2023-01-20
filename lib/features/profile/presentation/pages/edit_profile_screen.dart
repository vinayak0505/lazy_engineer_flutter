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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final formGlobalKey = GlobalKey<FormState>();
    final fullNameController = TextEditingController(text: data.userName);
    final descriptionController =
        TextEditingController(text: data.userDescription);
    final mobileController =
        TextEditingController(text: data.contact?.mobileNumber);
    final emailController = TextEditingController(text: data.contact?.email);
    TextEditingController semesterController = TextEditingController();
    TextEditingController yearOfAdmissionController = TextEditingController();
    final classController = TextEditingController();
    final locationController = TextEditingController(text: data.userAddress);
    final universityController =
        TextEditingController(text: data.universityName);

    ValueNotifier<List<String>> jobTypeValueList =
        ValueNotifier(List.empty(growable: true));
    ValueNotifier<List<String>> experienceLevelValueList =
        ValueNotifier(List.empty(growable: true));

    Future<void> onPress() async {
      if (formGlobalKey.currentState!.validate()) {
        final data = ProfileModal(
          userName: fullNameController.text,
          branch: classController.text,
          semester: int.parse(semesterController.text),
          universityName: universityController.text,
          userDescription: descriptionController.text,
          contact: Contact(
            email: emailController.text,
            mobileNumber: mobileController.text,
          ),
          yearOfAdmission: int.parse(yearOfAdmissionController.text),
          experienceLevel: experienceLevelValueList.value,
          jobType: jobTypeValueList.value,
          userAddress: locationController.text,
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

    final semesterIndex = semesterKeyList.indexOf(data.semester.toString());
    semesterController = TextEditingController(
      text: semesterKeyList[semesterIndex],
    );
    yearOfAdmissionController = TextEditingController(
      text: data.yearOfAdmission.toString(),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: formGlobalKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(fullName, style: theme.textTheme.headline6),
            CustomTextField.secondary(
              controller: fullNameController,
              hintText: fullName,
              validator: usernameValidation,
            ),
            const SizedBox(height: 16.0),
            Text(description, style: theme.textTheme.headline6),
            const SizedBox(height: 16.0),
            CustomTextField.multiLine(
              controller: descriptionController,
              hintText: description,
            ),
            const SizedBox(height: 16.0),
            Text(
              education,
              style: theme.textTheme.headline6,
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: CustomDropdown(
                    list: universityList,
                    hintText: searchUniversity,
                    controller: universityController,
                    dropdownValue: data.universityName,
                    validator: (value) => nullCheckTextValidation(
                      value,
                      university,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                CustomDropdown(
                  width: 150,
                  list: yearOfAdmissionList,
                  hintText: yearOfAdmission,
                  controller: yearOfAdmissionController,
                  dropdownValue: data.yearOfAdmission.toString(),
                  validator: (value) => nullCheckTextValidation(
                    value,
                    year,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: CustomDropdown(
                    list: classList,
                    hintText: classD,
                    controller: classController,
                    dropdownValue: data.userClass.toString(),
                    validator: (value) => nullCheckTextValidation(
                      value,
                      classD,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                CustomDropdown(
                  width: 150,
                  list: semesterList,
                  keyList: semesterKeyList,
                  hintText: semester,
                  controller: semesterController,
                  dropdownValue: semesterList[semesterIndex],
                  validator: (value) => nullCheckTextValidation(
                    value,
                    semester,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Text(
              experienceLevel,
              style: theme.textTheme.headline6,
            ),
            const SizedBox(height: 12.0),
            MultiOptionFilter(
              list: experienceLevelList,
              initialValue: ['Internship', 'Associate'],
              selected: experienceLevelValueList,
            ),
            const SizedBox(height: 16.0),
            Text(
              jobType,
              style: theme.textTheme.headline6,
            ),
            const SizedBox(height: 12.0),
            MultiOptionFilter(
              list: jobTypeList,
              selected: jobTypeValueList,
            ),
            const SizedBox(height: 16.0),
            Text(
              contact,
              style: theme.textTheme.headline6,
            ),
            const SizedBox(height: 16.0),
            CustomTextField(
              controller: emailController,
              hintText: mobileNumber,
              prefixIcon: AppIcons.mailIcon,
              validator: (value) => nullCheckTextValidation(
                value,
                mobileNumber,
              ),
            ),
            const SizedBox(height: 16.0),
            CustomTextField(
              controller: mobileController,
              hintText: email,
              prefixIcon: AppIcons.mobileIcon,
              validator: (value) => nullCheckTextValidation(
                value,
                email,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              location,
              style: theme.textTheme.headline6,
            ),
            CustomTextField.secondary(
              controller: locationController,
              hintText: location,
              validator: (value) => nullCheckTextValidation(
                value,
                location,
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
