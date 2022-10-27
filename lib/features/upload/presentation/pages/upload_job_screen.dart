import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/logic/list/list_cubit.dart';
import 'package:lazy_engineer/features/upload/data/repositories/upload_repository.dart';
import 'package:lazy_engineer/features/upload/presentation/widgets/company_image.dart';
import '../../../../assets/constants/lists.dart';
import '../../../../helper/input_validation.dart';
import '../../../components/custom_button.dart';
import '../../../components/custom_dropdown.dart';
import '../../../components/custom_icon.dart';
import '../../../components/custom_text_field.dart';
import '../../../components/tags_widget.dart';
import '../cubit/upload_cubit.dart';

class UploadJobRequestScreen extends StatelessWidget with InputValidationMixin {
  const UploadJobRequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formGlobalKey = GlobalKey<FormState>();
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
    bool? ratingController;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            uploadJobRequest,
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
        body: BlocProvider(
          create: (context) => UploadCubit(UploadRepository()),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: BlocBuilder<UploadCubit, UploadState>(
                builder: (context, state) {
                  return Form(
                    key: formGlobalKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16),
                        //* Title
                        Text(title, style: theme.textTheme.titleLarge),
                        CustomTextField.secondary(
                          controller: titleController,
                          hintText: title,
                          validator: (value) => nullCheckValidation(
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
                          validator: (value) => nullCheckValidation(
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
                          validator: (value) => nullCheckValidation(
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
                              validator: (value) => nullCheckValidation(
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
                              validator: (value) => nullCheckValidation(
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
                          validator: (value) => nullCheckValidation(
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
                          validator: (value) => nullCheckValidation(
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
                          validator: (value) => nullCheckValidation(
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
                          validator: (value) => nullCheckValidation(
                            value,
                            location,
                          ),
                        ),
                        const SizedBox(height: 16),
                        //* Compan Photo
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
                        const SizedBox(height: 16),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: CustomButton(
                            text: submit,
                            width: 130,
                            onPressed: () {
                              if (formGlobalKey.currentState!.validate()) {
                                // context.read<UploadCubit>().uploadJobs(
                                //       title: title,
                                //       profile: profileController.text,
                                //       company: companyController.text,
                                //       aboutCompany: aboutCompanyController.text,
                                //       location: locationController.text,
                                //       jobType: jobTypeController.text,
                                //       experienceLevel: experienceController.text,
                                //       datePosted: dateController.text,
                                //       skillsNeeded: skillsController,
                                //       expectedSalary: int.parse(
                                //         expectedSalaryController.text,
                                //       ),
                                //       numOfEmployees: int.parse(
                                //         numOfEmployeesController.text,
                                //       ),
                                //       companyPhoto: companyPhotoController,
                                //       rating: ratingController,
                                //     );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
