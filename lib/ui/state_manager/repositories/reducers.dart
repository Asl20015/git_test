import 'package:git_test/ui/state_manager/repositories/actions.dart';
import 'package:git_test/ui/state_manager/repositories/states.dart';
import 'package:redux/redux.dart';

final repositoryListReducer = combineReducers<RepositoryListState>([
  TypedReducer<RepositoryListState, LoadRepositoryListAction>(_loadRepositoryList).call,
  TypedReducer<RepositoryListState, ShowRepositoryListAction>(_showRepositoryList).call,
  TypedReducer<RepositoryListState, ErrorRepositoryListAction>(_errorRepositoryList).call,
]);

RepositoryListState _loadRepositoryList(
  RepositoryListState state,
  LoadRepositoryListAction action,
) =>
    state.copyWith(
      isLoading: true,
      isError: false,
    );

RepositoryListState _showRepositoryList(
  RepositoryListState state,
  ShowRepositoryListAction action,
) =>
    state.copyWith(
      isLoading: false,
      isError: false,
      repositories: action.repositories,
      login: action.login,
    );

RepositoryListState _errorRepositoryList(
  RepositoryListState state,
  ErrorRepositoryListAction action,
) =>
    state.copyWith(
      isLoading: false,
      isError: true,
      error: action.error,
    );
