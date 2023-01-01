import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchDownloadController = TextEditingController();
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            downloads,
            style: theme.textTheme.headline5,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              CustomTextField(
                controller: searchDownloadController,
                suffixIcon: AppIcons.searchIcon,
              ),
            ],),
          ),
        ),
      ),
    );
  }
}
