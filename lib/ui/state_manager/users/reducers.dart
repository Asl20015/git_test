import 'package:git_test/ui/state_manager/users/actions.dart';
import 'package:git_test/ui/state_manager/users/states.dart';
import 'package:redux/redux.dart';

final userListReducer = combineReducers<UserListState>([
  TypedReducer<UserListState, LoadUserListAction>(_loadUserList).call,
  TypedReducer<UserListState, ShowUserListAction>(_showUserList).call,
  TypedReducer<UserListState, ErrorUserListAction>(_errorUserList).call,
  TypedReducer<UserListState, StopUserListAction>(_stopUserList).call,
  TypedReducer<UserListState, AddNextUserListAction>(_addNextUserList).call,
]);

UserListState _stopUserList(
  UserListState state,
  StopUserListAction action,
) =>
    state.copyWith(
      isNextPageAvailable: false,
      isLoadingNextPage: false,
    );

UserListState _addNextUserList(
  UserListState state,
  AddNextUserListAction action,
) =>
    state.copyWith(
      isLoading: false,
      isLoadingNextPage: true,
      isError: false,
    );

UserListState _loadUserList(
  UserListState state,
  LoadUserListAction action,
) =>
    state.copyWith(
      isLoading: true,
      isError: false,
    );

UserListState _showUserList(
  UserListState state,
  ShowUserListAction action,
) =>
    state.copyWith(
      isLoading: false,
      isError: false,
      users: action.users,
      page: action.page,
    );

UserListState _errorUserList(
  UserListState state,
  ErrorUserListAction action,
) =>
    state.copyWith(
      isLoading: false,
      isError: true,
      error: action.error,
    );
