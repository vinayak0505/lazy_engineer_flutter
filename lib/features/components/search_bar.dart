import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({
    required this.list,
    required this.onSearch,
    super.key,
  });
  final Widget list;
  final void Function(String data) onSearch;
  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  static OverlayEntry? entry;
  late FocusNode focusNode;
  TextEditingController searchController = TextEditingController();

  LayerLink layerLink = LayerLink();
  @override
  void initState() {
    focusNode = FocusNode();
    searchController.addListener(() {
      widget.onSearch(searchController.text);
    });
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      reverseDuration: const Duration(milliseconds: 300),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.ease,
      reverseCurve: Curves.ease,
    );
    _animationController.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    removeOverlay();
    focusNode.dispose();
    super.dispose();
  }

  void removeOverlay() {
    entry?.remove();
    entry = null;
  }

  @override
  Widget build(BuildContext context) {
    void showOverlay() {
      if (entry != null) removeOverlay();
      final overlay = Overlay.of(context)!;
      final renderBox = context.findRenderObject() as RenderBox;
      final size = renderBox.size;
      entry ??= OverlayEntry(
        builder: (newContext) => CompositedTransformFollower(
          link: layerLink,
          showWhenUnlinked: false,
          offset: Offset(0, size.height),
          child: Container(
            margin: const EdgeInsets.only(right: 32),
            alignment: Alignment.topCenter,
            child: SizeTransition(
              sizeFactor: _animation,
              axisAlignment: 1,
              child: widget.list,
            ),
          ),
        ),
      );
      overlay.insert(entry!);
    }

    focusNode.addListener(() {
      if (!focusNode.hasPrimaryFocus) focusNode.unfocus();
      if (focusNode.hasFocus) {
        showOverlay();
        _animationController.forward();
      } else {
        removeOverlay();
        _animationController.reverse();
      }
    });

    return CompositedTransformTarget(
      link: layerLink,
      child: CustomTextField(
        controller: searchController,
        hintText: 'Search groups....',
        suffixIcon: AppIcons.searchIcon,
        focusNode: focusNode,
      ),
    );
  }
}
