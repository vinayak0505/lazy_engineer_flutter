import 'dart:io';
import 'package:flutter/material.dart';
import 'package:lazy_engineer/config/app_config.dart';

// not able stop changing picture when zoomed
class FullScreenPhoto extends StatefulWidget {
  const FullScreenPhoto({
    super.key,
    this.list,
    this.networkImageList,
    required this.index,
  });
  final List<File>? list;
  final List<String>? networkImageList;
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
    )..addListener(() {
        controller.value = animation!.value;
      });
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
    Matrix4 end = Matrix4.identity();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Hero(
        tag: AppConfig.companyPhotoTag,
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          onDoubleTapDown: (details) => tapDownDetails = details,
          onDoubleTap: () {
            final position = tapDownDetails!.localPosition;
            const double scale = 3;
            final x = -position.dx * (scale - 1);
            final y = -position.dy * (scale - 1);
            final zoomed = Matrix4.identity()
              ..translate(x, y)
              ..scale(scale);
            end = controller.value.isIdentity() ? zoomed : Matrix4.identity();
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
            children: [
              if (widget.list != null) 
                ...widget.list!.map(
                  (image) => InteractiveViewer(
                    transformationController: controller,
                    child: Image.file(image),
                  ),
                ),
              if (widget.networkImageList != null)
              ...widget.networkImageList!.map(
                  (image) => InteractiveViewer(
                    transformationController: controller,
                    child: Image.network(image),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
