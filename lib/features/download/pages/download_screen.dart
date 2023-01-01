import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({Key? key}) : super(key: key);
  final _value = "-1";
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
            child: Column(
              children: [
                CustomTextField(
                  controller: searchDownloadController,
                  suffixIcon: AppIcons.searchIcon,
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButtonFormField<String>(
                    elevation: 0,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    value: _value,
                    onChanged: (String? value) {},
                    items: const [
                      DropdownMenuItem(
                        value: '-1',
                        child: Text('Notes'),
                      ),
                      DropdownMenuItem(
                        value: '1',
                        child: Text('Computer Graphics & Multimedia'),
                      ),
                      DropdownMenuItem(
                        value: '2',
                        child: Text('Computer Graphics & Multimedia'),
                      ),
                      DropdownMenuItem(
                        value: '3',
                        child: Text('Computer Graphics & Multimedia'),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButtonFormField<String>(
                    elevation: 0,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    value: _value,
                    onChanged: (String? value) {},
                    items: const [
                      DropdownMenuItem(
                        value: '-1',
                        child: Text('Practical File'),
                      ),
                      DropdownMenuItem(
                        value: '1',
                        child: Text('Computer Graphics & Multimedia'),
                      ),
                      DropdownMenuItem(
                        value: '2',
                        child: Text('Computer Graphics & Multimedia'),
                      ),
                      DropdownMenuItem(
                        value: '3',
                        child: Text('Computer Graphics & Multimedia'),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButtonFormField<String>(
                    elevation: 0,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    value: _value,
                    onChanged: (String? value) {},
                    items: const [
                      DropdownMenuItem(
                        value: '-1',
                        child: Text('Books'),
                      ),
                      DropdownMenuItem(
                        value: '1',
                        child: Text('Computer Graphics & Multimedia'),
                      ),
                      DropdownMenuItem(
                        value: '2',
                        child: Text('Computer Graphics & Multimedia'),
                      ),
                      DropdownMenuItem(
                        value: '3',
                        child: Text('Computer Graphics & Multimedia'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
