import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/features/upload/presentation/widgets/upload_screen_widget.dart';
import '../../../../assets/constants/lists.dart';
import '../../../../assets/constants/strings.dart';
import '../../../../helper/input_validation.dart';
import '../../../components/custom_dropdown.dart';
import '../../../components/custom_text_field.dart';
import '../../../components/logic/list/list_cubit.dart';
import '../../../components/tags_widget.dart';
import '../widgets/company_image.dart';

class UploadJobScreen extends StatelessWidget with InputValidationMixin {
  const UploadJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextEditingController titleController = TextEditingController();
    TextEditingController profileController = TextEditingController();
    TextEditingController companyController = TextEditingController();
    TextEditingController aboutCompanyController = TextEditingController();
    TextEditingController jobTypeController = TextEditingController();
    TextEditingController experienceController = TextEditingController();
    List<String> skillsController = [];
    TextEditingController expectedSalaryController = TextEditingController();
    TextEditingController aboutTheCompanyController = TextEditingController();
    TextEditingController locationController = TextEditingController();
    TextEditingController numOfEmployeesController = TextEditingController();
    List<File> companyPhotoController = [];
    return UploadScreenWidget(
      title: uploadJobRequest,
      body: [
        //* Title
        Text(title, style: theme.textTheme.titleLarge),
        CustomTextField.secondary(
          controller: titleController,
          hintText: title,
          validator: (value) => nullCheckTextValidation(
            value,
            title,
          ),
        ),
        const SizedBox(height: 16),
        //* Company
        Text(company, style: theme.textTheme.titleLarge),
        CustomTextField.secondary(
          controller: companyController,
          hintText: title,
          validator: (value) => nullCheckTextValidation(
            value,
            company,
          ),
        ),
        const SizedBox(height: 16),
        //* About
        Text(aboutCompany, style: theme.textTheme.titleLarge),
        const SizedBox(height: 12),
        CustomTextField.multiLine(
          controller: aboutCompanyController,
          hintText: aboutCompany,
          validator: (value) => nullCheckTextValidation(
            value,
            aboutCompany,
          ),
        ),
        const SizedBox(height: 16),
        //* Number of Employees
        Row(
          children: [
            Text(
              noOfEmployees,
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(width: 24),
            CustomTextField.secondary(
              width: 100,
              controller: numOfEmployeesController,
              hintText: no,
              validator: (value) => nullCheckNumValidation(
                value,
                noOfEmployees,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        //* Salary
        Row(
          children: [
            Text(
              payRange,
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(width: 24),
            CustomTextField.secondary(
              width: 100,
              controller: expectedSalaryController,
              hintText: salary,
              validator: (value) => nullCheckNumValidation(
                value,
                payRange,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        //* About Description
        Text(
          aboutTheCompany,
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(height: 12),
        CustomTextField.multiLine(
          controller: aboutTheCompanyController,
          hintText: minimumQualification,
          validator: (value) => nullCheckTextValidation(
            value,
            aboutTheCompany,
          ),
        ),
        const SizedBox(height: 16),
        //* Experience Level
        Text(
          experienceLevel,
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(height: 8),
        CustomDropdown(
          list: experienceLevelList,
          hintText: experienceLevel,
          controller: experienceController,
          validator: (value) => nullCheckTextValidation(
            value,
            experienceLevel,
          ),
        ),
        const SizedBox(height: 16),
        //* Job Type
        Text(jobType, style: theme.textTheme.titleLarge),
        const SizedBox(height: 8),
        CustomDropdown(
          list: jobTypeList,
          hintText: jobType,
          controller: jobTypeController,
          validator: (value) => nullCheckTextValidation(
            value,
            jobType,
          ),
        ),
        const SizedBox(height: 16),
        //* Skills
        Text(
          skillsRequired,
          style: theme.textTheme.titleLarge,
        ),
        TagsWidget(listTags: (value) {}),
        //* Location
        CustomDropdown(
          hintText: location,
          list: locationList,
          controller: locationController,
          validator: (value) => nullCheckTextValidation(
            value,
            location,
          ),
        ),
        const SizedBox(height: 16),
        //* Company Photo
        Text(
          companyPhotos,
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(height: 12),
        BlocProvider(
          create: (context) => ListCubit<File>(),
          child: CompanyImage(
            list: companyPhotoController,
            onSubmit: (list) {
              // companyPhotoController = list;
            },
          ),
        ),
      ],
      onPressed: (cubit) {
        cubit.uploadJobs(
          title: title,
          profile: profileController.text,
          company: companyController.text,
          aboutCompany: aboutCompanyController.text,
          location: locationController.text,
          jobType: jobTypeController.text,
          experienceLevel: experienceController.text,
          datePosted: DateTime.now().toIso8601String(),
          skillsNeeded: skillsController,
          expectedSalary: int.parse(
            expectedSalaryController.text,
          ),
          numOfEmployees: int.parse(
            numOfEmployeesController.text,
          ),
          companyPhoto: [],
        );
      },
    );
  }
}
