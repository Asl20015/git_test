import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:git_test/data/api/api.dart';
import 'package:git_test/data/repositories/repository_repository.dart';
import 'package:git_test/data/repositories/user_repository.dart';
import 'package:git_test/domain/interceprots/user_interceptor.dart';
import 'package:git_test/domain/repositories/repository_repository.dart';
import 'package:git_test/domain/repositories/user_repository.dart';
import 'package:git_test/domain/services/navigator_service.dart';
import 'package:git_test/ui/state_manager/reduser.dart';
import 'package:git_test/ui/state_manager/repositories/middlewares.dart';
import 'package:git_test/ui/state_manager/repositories/states.dart';
import 'package:git_test/ui/state_manager/store.dart';
import 'package:git_test/ui/state_manager/users/middlewares.dart';
import 'package:git_test/ui/state_manager/users/states.dart';
import 'package:redux/redux.dart';

class LocatorService {
  final api = Api();
  final navigatorKey = GlobalKey<NavigatorState>();

  late UserRepository userRepository;
  late RepositoryRepository repositoryRepository;

  late NavigatorService navigatorService;

  late UserInterceptor userInterceptor;

  late Store<AppState> store;

  LocatorService() {
    repositoryRepository = ApiRepositoryRepository(api: api);
    userRepository = ApiUserRepository(api: api);

    navigatorService = NavigatorService(navigatorKey: navigatorKey);

    userInterceptor = UserInterceptor(userRepository: userRepository);

    store = Store(
      appReducer,
      initialState: AppState(
        userListState: UserListState(),
        repositoryListState: RepositoryListState(),
      ),
      middleware: [
        UserMiddleware(userRepository: userRepository).call,
        RepositoryMiddleware(repositoryRepository: repositoryRepository).call,
      ],
    );

    _register();
  }

  void _register() {
    GetIt.I.registerSingleton<NavigatorService>(navigatorService);
    GetIt.I.registerSingleton<UserInterceptor>(userInterceptor);
  }
}
