import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_engineer/assets/constants/decoration.dart';
import 'package:lazy_engineer/assets/icons.dart';
import 'package:lazy_engineer/features/components/custom_text_field.dart';
import 'package:lazy_engineer/features/components/search_bar/modals/search_enum.dart';
import 'package:lazy_engineer/features/components/search_bar/search_notes/search_bloc.dart';
import 'package:lazy_engineer/navigation/routes.dart';

class SearchBar extends StatefulWidget {
  const SearchBar(this.bloc, this.searchEnum, {super.key});
  final SearchBloc bloc;
  final SearchEnum searchEnum;
  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> with TickerProviderStateMixin {
  late TextEditingController searchController;
  late FocusNode focusNode;
  late AnimationController _animationController;
  late Animation<double> _animation;

  static OverlayEntry? entry;

  LayerLink layerLink = LayerLink();
  @override
  void initState() {
    searchController = TextEditingController();
    focusNode = FocusNode();
    searchController.addListener(() {
      widget.bloc.add(
        SearchEvent(searchController.text),
      );
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
    removeOverlay();
    _animationController.dispose();
    searchController.dispose();
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
      final overlay = Overlay.of(context);
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
            child: SizeTransition(
              sizeFactor: _animation,
              axisAlignment: 1,
              child: Material(
                color: Colors.transparent,
                child: BlocBuilder<SearchBloc, List<dynamic>>(
                  bloc: widget.bloc,
                  builder: (context, state) {
                    return state.isEmpty
                        ? Container()
                        : ListOverlay(
                            state,
                            searchEnum: widget.searchEnum,
                            focusNode: focusNode,
                            searchController: searchController,
                          );
                  },
                ),
              ),
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
        suffixOnPress: () {
          widget.bloc.add(
            SearchEvent(searchController.text),
          );
          focusNode.requestFocus();
        },
        focusNode: focusNode,
      ),
    );
  }
}

class ListOverlay extends StatelessWidget {
  const ListOverlay(
    this.list, {
    super.key,
    required this.focusNode,
    required this.searchController,
    required this.searchEnum,
  });
  final List<dynamic> list;
  final SearchEnum searchEnum;
  final FocusNode focusNode;
  final TextEditingController searchController;
  @override
  Widget build(BuildContext context) {
    void navigateToPage(int index) {
      switch (searchEnum) {
        case SearchEnum.notes:
          context.push(
            '${RouteGenerator.notesDescriptionRoute}/${index + 1}',
            extra: list[index],
          );
          break;
        case SearchEnum.jobs:
          context.push(
            '${RouteGenerator.jobsDescriptionRoute}/${index + 1}',
            extra: list[index],
          );
          break;
        case SearchEnum.book:
          context.push(
            '${RouteGenerator.bookDescriptionRoute}/${index + 1}',
            extra: list[index],
          );
          break;
        case SearchEnum.file:
          context.push(
            '${RouteGenerator.fileDescriptionRoute}/${index + 1}',
            extra: list[index],
          );
          break;
        case SearchEnum.paper:
          context.push(
            '${RouteGenerator.questionPaperDescriptionRoute}/${index + 1}',
            extra: list[index],
          );
          break;
      }
    }

    return Container(
      constraints: const BoxConstraints(maxHeight: 150),
      decoration: kRoundedBottomContainer,
      child: ClipRRect(
        child: ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemCount: list.length,
          itemBuilder: (context, index) {
            return ListTile(
              dense: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              onTap: () {
                searchController.text = list[index].title as String;
                focusNode.unfocus();
                navigateToPage(index);
              },
              title: Text(list[index].title as String),
            );
          },
        ),
      ),
    );
  }
}
