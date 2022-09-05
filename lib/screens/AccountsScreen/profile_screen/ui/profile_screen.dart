import 'package:flutter/material.dart';
import '../../../../assets/constants/strings.dart';
import '../../../../model/user.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              Text(
                User.dummy().userName,
                style: theme.textTheme.headlineLarge,
              ),
              Text(
                'Student of B.Tech. CSE 3rd year',
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
              Text('Guru Tegh Bahadur Institute of Technology',
                  style: theme.textTheme.titleMedium),
              Text('Delhi, India', style: theme.textTheme.bodyMedium),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {},
                child: Text(
                  showMoreC,
                  style: theme.textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              
              Text(
                upload,
                style: theme.textTheme.headline6,
              ),
              const SizedBox(height: 16),
              userUploadDescription(),
            ]),
      ),
    );
  }

  Widget userUploadDescription() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(children: const [
          Text('10'),
          SizedBox(height: 4),
          Text(notes),
        ]),
        Column(children: const [
          Text('2'),
          SizedBox(height: 4),
          Text(files),
        ]),
        Column(children: const [
          Text('2'),
          SizedBox(height: 4),
          Text(paper),
        ]),
        Column(children: const [
          Text('2'),
          SizedBox(height: 4),
          Text(book),
        ]),
        Column(children: const [
          Text('5'),
          SizedBox(height: 4),
          Text(jobRequest),
        ]),
      ],
    );
  }
}
