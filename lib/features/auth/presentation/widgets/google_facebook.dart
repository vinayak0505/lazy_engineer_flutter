import 'package:flutter/material.dart';
import '../../../../screens/components/custom_button.dart';

class GoogleFacebook extends StatelessWidget {
  const GoogleFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: CustomButton.google(onPressed: () {}),
      ),
      const SizedBox(width: 10),
      Expanded(
        child: CustomButton.facebook(onPressed: () {}),
      ),
    ]);
  }
}
