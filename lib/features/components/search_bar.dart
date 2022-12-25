import 'package:flutter/material.dart';
import '../../assets/constants/decoration.dart';
import '../../assets/constants/strings.dart';
import '../../assets/icons.dart';
import 'custom_text_field.dart';

class SearchBar extends StatefulWidget {
  const SearchBar(this.list, {super.key});
  final List<String> list;
  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  static OverlayEntry? entry;
  late FocusNode focusNode;
  LayerLink layerLink = LayerLink();
  @override
  void initState() {
    focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
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
    TextEditingController searchController = TextEditingController();
    void showOverlay() {
      if (entry != null) removeOverlay();
      final overlay = Overlay.of(context)!;
      final renderBox = context.findRenderObject() as RenderBox;
      final size = renderBox.size;
      entry ??= OverlayEntry(
        builder: (newContext) => GestureDetector(
          onTap: () => focusNode.unfocus(),
          child: Container(
            color: Colors.transparent,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CompositedTransformFollower(
              link: layerLink,
              showWhenUnlinked: false,
              offset: Offset(0, size.height),
              child: Align(
                alignment: Alignment.topCenter,
                child: OverlayAnimation(
                  isOpen: focusNode.hasFocus,
                  child: SearchSuggestionList(
                    widget.list,
                    (element) {
                      searchController.text = element;
                      focusNode.unfocus();
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      );
      overlay.insert(entry!);
    }

    focusNode.addListener(() {
      focusNode.hasFocus ? showOverlay() : removeOverlay();
    });
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CompositedTransformTarget(
        link: layerLink,
        child: CustomTextField(
          controller: searchController,
          hintText: searchCourse,
          suffixIcon: AppIcons.searchIcon,
          focusNode: focusNode,
        ),
      ),
    );
  }
}

class SearchSuggestionList extends StatelessWidget {
  const SearchSuggestionList(this.list, this.onTap, {super.key});
  final List<String> list;
  final void Function(String element) onTap;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
        decoration: kRoundedBottomContainer,
        height: list.isNotEmpty ? 200 : 50,
        width: double.infinity,
        alignment: Alignment.center,
        child: list.isNotEmpty
            ? ListView.separated(
                shrinkWrap: true,
                itemCount: list.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => Material(
                  child: ListTile(
                  onTap: () => onTap.call(list[index]),
                    dense: true,
                    title: Text(
                      list[index],
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
                separatorBuilder: (_, __) => const Divider(height: 1),
              )
            : Text(noData, style: theme.textTheme.bodyLarge),
    );
  }
}

class OverlayAnimation extends StatefulWidget {
  const OverlayAnimation({
    super.key,
    required this.child,
    required this.isOpen,
    this.duration = const Duration(milliseconds: 500),
    this.reverseDuration,
    this.curve = Curves.ease,
    this.reverseCurve,
  });
  final Duration duration;
  final Duration? reverseDuration;
  final bool isOpen;
  final Curve curve;
  final Curve? reverseCurve;
  final Widget child;

  @override
  State<OverlayAnimation> createState() => _OverlayAnimationState();
}

class _OverlayAnimationState extends State<OverlayAnimation>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: widget.duration,
      reverseDuration: widget.reverseDuration ?? widget.duration,
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: widget.curve,
      reverseCurve: widget.reverseCurve ?? widget.curve,
    );
    _animationController.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    widget.isOpen
        ? _animationController.forward()
        : _animationController.reverse();
    return SizeTransition(
      sizeFactor: _animation,
      axisAlignment: 1,
      child: widget.child,
    );
  }
}
