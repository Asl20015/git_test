import 'package:git_test/domain/repositories/user_repository.dart';
import 'package:git_test/ui/state_manager/store.dart';
import 'package:git_test/ui/state_manager/users/actions.dart';
import 'package:redux/redux.dart';

class UserMiddleware implements MiddlewareClass<AppState> {
  final UserRepository userRepository;

  UserMiddleware({required this.userRepository});

  @override
  call(Store<AppState> store, action, NextDispatcher next) {
    if (action is LoadUserListAction) {
      Future(() async {
        final answer = await userRepository.searchListUser(
          query: action.query,
          page: 1,
        );
        if (answer.data != null) {
          store.dispatch(ShowUserListAction(
            users: answer.data!,
            page: 1,
          ));
        } else {
          store.dispatch(ErrorUserListAction(error: answer.error!));
        }
      });
    }

    if (action is AddNextUserListAction) {
      final users = store.state.userListState.users.toList();
      Future(() async {
        final newUsers = await userRepository.searchListUser(
          query: action.query,
          page: action.page,
        );
        if ((newUsers.data ?? []).isEmpty) {
          store.dispatch(StopUserListAction());
        } else {
          users.addAll(newUsers.data!);
          store.dispatch(ShowUserListAction(
            users: users,
            page: action.page,
          ));
        }
      });
    }

    next(action);
  }
}
