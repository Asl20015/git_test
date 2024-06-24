import 'package:git_test/domain/repositories/repository_repository.dart';
import 'package:git_test/ui/state_manager/repositories/actions.dart';
import 'package:git_test/ui/state_manager/store.dart';
import 'package:redux/redux.dart';

class RepositoryMiddleware implements MiddlewareClass<AppState> {
  final RepositoryRepository repositoryRepository;

  RepositoryMiddleware({required this.repositoryRepository});

  @override
  call(Store<AppState> store, action, NextDispatcher next) {
    if (action is LoadRepositoryListAction) {
      Future(() async {
        final answer = await repositoryRepository.getRepositoryUser(login: action.login);
        if (answer.data != null) {
          store.dispatch(ShowRepositoryListAction(
            repositories: answer.data!,
            login: action.login,
          ));
        } else {
          store.dispatch(ErrorRepositoryListAction(error: answer.error!));
        }
      });
    }

    next(action);
  }
}
