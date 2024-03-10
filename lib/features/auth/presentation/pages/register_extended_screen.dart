import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/features/auth/presentation/widgets/auth_background.dart';
import 'package:lazy_engineer/features/components/custom_button.dart';
import 'package:lazy_engineer/features/components/custom_dropdown.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';

class RegisterExtendedScreen extends StatelessWidget {
  const RegisterExtendedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController universityController = TextEditingController();
    final TextEditingController classController = TextEditingController();
    final TextEditingController yearController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffEEFAFE),
        body: ListView(
          children: [
            const AuthBackground(image: AppImages.registerExtended),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextField(
                hintText: university,
                controller: universityController,
                suffixIcon: AppIcons.searchIcon,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomDropdown(
                  width: 130,
                  hintText: classD,
                  list: classList,
                  controller: classController,
                ),
                CustomDropdown(
                  width: 130,
                  hintText: year,
                  list: yearList,
                  controller: yearController,
                ),
              ],
            ),
            const SizedBox(height: 48),
            Center(
              child: CustomButton(
                isBig: true,
                width: 130,
                text: next,
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
