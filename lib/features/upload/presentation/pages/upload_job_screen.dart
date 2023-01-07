import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/core/logic/list/list_cubit.dart';
import 'package:lazy_engineer/features/components/custom_dropdown.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/features/components/edit_tags_widget.dart';
import 'package:lazy_engineer/features/upload/data/models/upload_jobs_request/upload_jobs_request.dart';
import 'package:lazy_engineer/features/upload/presentation/widgets/company_image.dart';
import 'package:lazy_engineer/features/upload/presentation/widgets/upload_screen_widget.dart';
import 'package:lazy_engineer/helper/input_validation.dart';

class UploadJobScreen extends StatelessWidget with InputValidationMixin {
  const UploadJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final titleController = TextEditingController();
    final profileController = TextEditingController();
    final companyController = TextEditingController();
    final aboutCompanyController = TextEditingController();
    final jobTypeController = TextEditingController();
    final experienceController = TextEditingController();
    List<String> skillsController = [];
    final expectedSalaryController = TextEditingController();
    final aboutTheCompanyController = TextEditingController();
    final locationController = TextEditingController();
    final numOfEmployeesController = TextEditingController();
    final List<File> companyPhotoController = [];
    return UploadScreenWidget(
      title: uploadJob,
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
            const SizedBox(width: 16),
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
            const SizedBox(width: 16),
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
        const SizedBox(height: 12),
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
        const SizedBox(height: 12),
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
        //* Location
        Text(location, style: theme.textTheme.titleLarge),
        const SizedBox(height: 12),
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
        //* Skills
        Text(
          skillsRequired,
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(height: 12),
        EditTagsWidget(
          listTags: (value) => skillsController = value,
          validator: (_) => emptyListCheckValidation(
            skillsController,
            tags,
          ),
        ),
        //* Company Photo
        Text(
          companyPhotos,
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(height: 8),
        BlocProvider(
          create: (context) => ListCubit(),
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
          UploadJobsRequest(
            title: titleController.text,
            profile: profileController.text,
            company: companyController.text,
            aboutCompany: aboutCompanyController.text,
            location: locationController.text,
            jobType: jobTypeController.text,
            experienceLevel: experienceController.text,
            datePosted: DateTime.now().toIso8601String(),
            skillsNeeded: skillsController,
            expectedSalary: int.parse(expectedSalaryController.text),
          ),
        );
      },
    );
  }
}
