import 'package:flutter/material.dart';
import 'package:git_test/ui/state_manager/store.dart';
import 'package:git_test/ui/state_manager/users/actions.dart';
import 'package:redux/redux.dart';

class MainController {
  final Store<AppState> _store;

  MainController({required Store<AppState> store}) : _store = store;

  final queryController = TextEditingController();

  void onLoadNextPage() {
    if (!_store.state.userListState.isLoadingNextPage &&
        _store.state.userListState.isNextPageAvailable) {
      final page = _store.state.userListState.page;
      _store.dispatch(AddNextUserListAction(
        page: page + 1,
        query: queryController.text,
      ));
    }
  }

  void searchUsers() {
    _store.dispatch(LoadUserListAction(query: queryController.text));
  }
}
