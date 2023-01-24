import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredView extends StatelessWidget {
  const StaggeredView(
    this.list, {
    super.key,
    this.onTap,
  });
  final List<Widget> list;
  final void Function(BuildContext context, int index)? onTap;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => onTap?.call(context, index),
          child: list[index],
        );
      },
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
    );
  }
}
