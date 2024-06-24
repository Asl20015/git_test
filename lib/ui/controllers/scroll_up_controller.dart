import 'package:flutter/cupertino.dart';

class ScrollUpController {
  final _scrollController = ScrollController();

  ScrollController get scrollController => _scrollController;

  late Widget scrollButton = Container();

  void init({
    required Widget showButton,
    Widget? hideButton,
    required Function setState,
    Function? addPagination,
  }) {
    _scrollController.addListener(
      () {
        _checkScrollController(
          showButton,
          hideButton,
          setState,
        );
        if (addPagination != null) {
          if (scrollController.position.pixels + 600 > scrollController.position.maxScrollExtent) {
            addPagination();
          }
        }
      },
    );
  }

  void dispose() {
    _scrollController.dispose();
  }

  void jumpToStart() {
    _scrollController.animateTo(
      0.0,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeIn,
    );
  }

  void _checkScrollController(
    Widget showButton,
    Widget? hideButton,
    Function setState,
  ) {
    if (_scrollController.position.pixels > 100) {
      scrollButton = showButton;
      setState();
    } else {
      if (scrollButton != (hideButton ?? Container())) {
        scrollButton = hideButton ?? Container();
        setState();
      }
    }
  }
}
