import 'package:flutter/material.dart';

class AnimatedIconButton extends StatefulWidget {
  const AnimatedIconButton({
    super.key,
    required this.onPressed,
    required this.animatedData,
  });
  final Function() onPressed;
  final AnimatedIconData animatedData;

  factory AnimatedIconButton.menuCross(Function() onPressed) {
    return AnimatedIconButton(
      onPressed: onPressed,
      animatedData: AnimatedIcons.menu_close,
    );
  }

  @override
  State<AnimatedIconButton> createState() => _AnimatedIconButtonState();
}

class _AnimatedIconButtonState extends State<AnimatedIconButton>
    with TickerProviderStateMixin {
  bool _flag = true;

  late Animation<double> _myAnimation;
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _myAnimation = CurvedAnimation(
      curve: Curves.ease,
      parent: _controller,
    );
  }

  @override
  Widget build(BuildContext context) {
    void toggle() {
      _flag ? _controller.forward() : _controller.reverse();
      _flag = !_flag;
      widget.onPressed();
    }

    return IconButton(
      padding: EdgeInsets.zero,
      icon: AnimatedIcon(
        progress: _myAnimation,
        icon: widget.animatedData,
        color: Colors.black,
      ),
      onPressed: () {
        toggle();
      },
    );
  }
}
