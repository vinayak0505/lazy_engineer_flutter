import 'package:flutter/material.dart';
import 'package:lazy_engineer/screens/components/custom_dropdown.dart';
import 'package:lazy_engineer/screens/components/custom_image.dart';
import 'package:lazy_engineer/screens/components/custom_text_field.dart';

import '../../../../assets/constants/strings.dart';
import '../../../../assets/icons.dart';
import '../../../../assets/images.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextEditingController fullNameController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    TextEditingController contactController = TextEditingController();
    TextEditingController classController = TextEditingController();
    TextEditingController yearController = TextEditingController();

    List<String> classList = [
      'CSE 1',
      'CSE 2',
      'CSE 3',
      'IT 1',
      'IT 2',
      'IT 3',
      'ECE 1',
      'ECE 2',
      'ECE 3',
    ];

    List<String> yearList = [
      'Year 1',
      'Year 2',
      'Year 3',
      'Year 4',
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomImage(
              image: AppImages.profileImage,
              radius: 50,
              height: 100,
            ),
            const SizedBox(height: 20.0),
            Text(fullName, style: theme.textTheme.headline6),
            CustomTextField.secondary(controller: fullNameController),
            const SizedBox(height: 16.0),
            Text(description, style: theme.textTheme.headline6),
            const SizedBox(height: 16.0),
            CustomTextField.secondary(controller: descriptionController),
            const SizedBox(height: 16.0),
            Text(
              'Contact',
              style: theme.textTheme.headline6,
            ),
            const SizedBox(height: 16.0),
            CustomTextField.secondary(controller: contactController),
            const SizedBox(height: 16.0),
            CustomTextField.secondary(
                controller: contactController,
                hintText: 'Contact',
                prefixIcon: AppIcons.mailIcon),
            const SizedBox(height: 16.0),
            CustomTextField.secondary(
                controller: contactController,
                hintText: 'Mobile Number',
                prefixIcon: AppIcons.mobileIcon),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 40,
                  width: 100,
                  child: CustomDropdown(
                    list: classList,
                    hintText: 'Class',
                    controller: classController,
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 100,
                  child: CustomDropdown(
                    list: yearList,
                    hintText: 'Year',
                    controller: yearController,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
