import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/config/theme/app_theme.dart';
import 'package:lazy_engineer/features/upload/data/repositories/upload_repository.dart';

import '../../../../assets/constants/lists.dart';
import '../../../components/custom_button.dart';
import '../../../components/custom_dropdown.dart';
import '../../../components/custom_icon.dart';
import '../../../components/custom_text_field.dart';
import '../../../components/tags/ui/tags_widget.dart';
import '../cubit/upload_cubit.dart';

class UploadJobRequestScreen extends StatelessWidget {
  const UploadJobRequestScreen({Key? key}) : super(key: key);

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
    TextEditingController dateController = TextEditingController();
    TextEditingController expectedSalaryController = TextEditingController();
    TextEditingController aboutthecompanyController = TextEditingController();
    TextEditingController locationController = TextEditingController();
    TextEditingController numOfEmployeesController = TextEditingController();
    List<String> companyPhotoController = [];
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
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      //* Title
                      Text(title, style: theme.textTheme.titleLarge),
                      CustomTextField.secondary(
                        controller: titleController,
                        hintText: title,
                      ),
                      const SizedBox(height: 16),
                      //* Company
                      Text(company, style: theme.textTheme.titleLarge),
                      CustomTextField.secondary(
                        controller: companyController,
                        hintText: title,
                      ),
                      const SizedBox(height: 16),
                      //* Number of Employees
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40,
                            width: 200,
                            child: Text(noOfEmployees,
                                style: theme.textTheme.titleLarge),
                          ),
                          SizedBox(
                            height: 40,
                            width: 100,
                            child: CustomTextField.secondary(
                              controller: numOfEmployeesController,
                              hintText: no,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      //* Salary
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40,
                            width: 200,
                            child: Text(
                              payRange,
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            width: 100,
                            child: CustomTextField.secondary(
                              controller: expectedSalaryController,
                              hintText: salary,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      //* About Description
                      Text(aboutTheCompany, style: theme.textTheme.titleLarge),
                      const SizedBox(height: 12),
                      CustomTextField.multiLine(
                        controller: aboutthecompanyController,
                        hintText: minimumQualification,
                      ),
                      const SizedBox(height: 16),
                      //* Experience Level
                      Text(experienceLevel, style: theme.textTheme.titleLarge),
                      const SizedBox(height: 16),
                      Text(jobType, style: theme.textTheme.titleLarge),
                      const SizedBox(height: 16),
                      Text(location, style: theme.textTheme.titleLarge),
                      const SizedBox(height: 16),
                      CustomDropdown(
                        hintText: searchByName,
                        list: locationList,
                        controller: locationController,
                      ),
                      const SizedBox(height: 8),
                      TagsWidget(listTags: (value) {}),
                      const SizedBox(height: 16),
                      Text(companyPhotos, style: theme.textTheme.titleLarge),
                      const SizedBox(height: 16),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            viewAll,
                            style: theme.textTheme.labelMedium?.copyWith(
                              color: AppThemes.subTitleColor,
                            ),
                          ),
                        ),
                      ),
                      /*     const SizedBox(height: 16),
                        Container(
                        padding: const EdgeInsets.all(16.0),
                        child: GridView.count(
                          crossAxisCount: 3,
                          crossAxisSpacing: 4.0,
                          mainAxisSpacing: 8.0,
                          children: <Widget>[
                            Image.network('assets/images/company_photo.png'),
                            Image.network('assets/images/company_photo.png'),
                            Image.network('assets/images/company_photo.png'),
                            Image.network('assets/images/company_photo.png'),
                            Image.network('assets/images/company_photo.png'),
                            Image.network('assets/images/company_photo.png'),
                          ],
                        ),
                      ), */
                      const SizedBox(height: 16),
                      Text(tags, style: theme.textTheme.titleLarge),
                      const SizedBox(height: 8),
                      TagsWidget(listTags: (value) {}),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: CustomButton(
                          text: uploadFile,
                          width: 130,
                          onPressed: () {
                            context.read<UploadCubit>().uploadJobs(
                                  title: title,
                                  profile: profileController.text,
                                  company: companyController.text,
                                  aboutCompany: aboutCompanyController.text,
                                  location: locationController.text,
                                  jobType: jobTypeController.text,
                                  experienceLevel: experienceController.text,
                                  datePosted: dateController.text,
                                  skillsNeeded: skillsController,
                                  expectedSalary: int.parse(
                                    expectedSalaryController.text,
                                  ),
                                  numOfEmployees: int.parse(
                                    numOfEmployeesController.text,
                                  ),
                                  companyPhoto: companyPhotoController,
                                  rating: ratingController,
                                );
                          },
                        ),
                      ),
                    ],
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
