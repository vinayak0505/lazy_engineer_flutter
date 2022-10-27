import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lazy_engineer/config/app_config.dart';

import '../../../components/custom_image.dart';

class FullScreenPhoto extends StatefulWidget {
  const FullScreenPhoto({
    super.key,
    required this.list,
    required this.index,
  });
  final List<File> list;
  final int index;

  @override
  State<FullScreenPhoto> createState() => _FullScreenPhotoState();
}

class _FullScreenPhotoState extends State<FullScreenPhoto>
    with SingleTickerProviderStateMixin {
  late TransformationController controller;
  TapDownDetails? tapDownDetails;

  late AnimationController animationController;
  Animation<Matrix4>? animation;

  late PageController pageController;
  late int page;
  @override
  void initState() {
    super.initState();
    page = widget.index;
    controller = TransformationController();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    )..addListener(
        () {
          controller.value = animation!.value;
        },
      );
    pageController = PageController(initialPage: widget.index);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Hero(
        tag: AppConfig.companyPhotoTag,
        child: GestureDetector(
          onDoubleTapDown: (details) => tapDownDetails = details,
          onTap: () => Navigator.pop(context),
          // onHorizontalDragEnd: (_) => pageController.animateToPage(++page,
          //     duration: const Duration(seconds: 1), curve: Curves.easeIn),
          onDoubleTap: () {
            final position = tapDownDetails!.localPosition;
            const double scale = 3;
            final x = -position.dx * (scale - 1);
            final y = -position.dy * (scale - 1);
            final zoomed = Matrix4.identity()
              ..translate(x, y)
              ..scale(scale);
            final end =
                controller.value.isIdentity() ? zoomed : Matrix4.identity();
            final Animation<double> curve = CurvedAnimation(
              parent: animationController,
              curve: Curves.easeOut,
            );
            animation =
                Matrix4Tween(begin: controller.value, end: end).animate(curve);
            animationController.forward(from: 0);
          },
          child: PageView(
            controller: pageController,
            // physics: const NeverScrollableScrollPhysics(),
            children: [
              ...widget.list.map(
                (image) => InteractiveViewer(
                  transformationController: controller,
                  child: Image.file(image),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
