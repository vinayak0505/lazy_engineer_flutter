import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({
    required this.list,
    required this.onSearch,
    super.key,
    this.isLoading = false,
    required this.searchController,
    required this.focusNode,
  });
  final List<String> list;
  final bool isLoading;
  final void Function(String data) onSearch;
  final TextEditingController searchController;
  final FocusNode focusNode;
  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  static OverlayEntry? entry;

  LayerLink layerLink = LayerLink();
  @override
  void initState() {
    // searchController.addListener(() {
    //   widget.onSearch(searchController.text);
    // });
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
    super.dispose();
  }

  void removeOverlay() {
    entry?.remove();
    entry = null;
  }

  @override
  Widget build(BuildContext context) {
    Widget list() {
      print('===============${widget.list}');
      return ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: widget.list.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            onTap: () {
              widget.searchController.text = widget.list[index];
              widget.focusNode.unfocus();
            },
            title: Text(widget.list[index]),
          );
        },
      );
    }

    void showOverlay() {
      if (entry != null) removeOverlay();
      final overlay = Overlay.of(context)!;
      final renderBox = context.findRenderObject()! as RenderBox;
      final size = renderBox.size;
      entry ??= OverlayEntry(
        builder: (newContext) => CompositedTransformFollower(
          link: layerLink,
          showWhenUnlinked: false,
          offset: Offset(0, size.height),
          child: Container(
            margin: const EdgeInsets.only(right: 32),
            alignment: Alignment.topCenter,
            // child: SizeTransition(
            //   sizeFactor: _animation,
            //   axisAlignment: 1,
            child: Material(
              color: Colors.transparent,
              child: widget.list.isEmpty
                  ? Container()
                  : Container(
                      constraints: const BoxConstraints(maxHeight: 150),
                      decoration: kRoundedBottomContainer,
                      child: ClipRRect(
                        child: widget.isLoading
                            ? const CircularProgressIndicator()
                            : list(),
                      ),
                    ),
            ),
          ),
        ),
        // ),
      );
      overlay.insert(entry!);
    }

    widget.focusNode.addListener(() {
      if (!widget.focusNode.hasPrimaryFocus) widget.focusNode.unfocus();
      if (widget.focusNode.hasFocus) {
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
        controller: widget.searchController,
        hintText: 'Search groups....',
        suffixIcon: AppIcons.searchIcon,
        suffixOnPress: () => widget.onSearch(widget.searchController.text),
        focusNode: widget.focusNode,
      ),
    );
  }
}
