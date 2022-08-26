import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({Key? key, required this.icon, required this.color, required this.onPressed}) : super(key: key);
  final String icon;
  final Color color;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            primary: color,
          ),
          child: SvgPicture.asset(icon),
        ),
      ),
    );
  }
}
