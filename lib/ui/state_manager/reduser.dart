import 'package:git_test/ui/state_manager/repositories/actions.dart';
import 'package:git_test/ui/state_manager/repositories/reducers.dart';
import 'package:git_test/ui/state_manager/store.dart';
import 'package:git_test/ui/state_manager/users/actions.dart';
import 'package:git_test/ui/state_manager/users/reducers.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is UserListAction) {
    final nextState = userListReducer(state.userListState, action);
    return state.copyWith(userListState: nextState);
  } else if (action is RepositoryListAction) {
    final nextState = repositoryListReducer(state.repositoryListState, action);
    return state.copyWith(repositoryListState: nextState);
  }

  return state;
}
