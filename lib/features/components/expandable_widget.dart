import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_image.dart';

class ExpandableContainer extends StatefulWidget {
  const ExpandableContainer({
    required this.heading,
    required this.child,
    super.key,
  });
  final String heading;
  final Widget child;

  @override
  State<ExpandableContainer> createState() => _ExpandableContainerState();
}

class _ExpandableContainerState extends State<ExpandableContainer> {
  bool opened = false;
  double turns = 0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff314862)),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () => setState(() {
              opened = !opened;
              turns = turns == 0 ? 0.5 : 0;
            }),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(11),
                  topRight: const Radius.circular(11),
                  bottomLeft: Radius.circular(opened ? 0 : 11),
                  bottomRight: Radius.circular(opened ? 0 : 11),
                ),
              ),
              child: Row(
                children: [
                  Text(
                    widget.heading,
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: const Color(0xff314862),
                    ),
                  ),
                  const Spacer(),
                  AnimatedRotation(
                    curve: Curves.fastOutSlowIn,
                    duration: const Duration(milliseconds: 200),
                    turns: turns,
                    child: const CustomImage(
                      image: AppIcons.downArrowIcon,
                      padding: EdgeInsets.all(8),
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedSize(
            alignment: Alignment.topCenter,
            curve: Curves.ease,
            duration: const Duration(milliseconds: 300),
            child: opened ? widget.child : Container(),
          ),
        ],
      ),
    );
  }
}
