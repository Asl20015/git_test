import 'package:git_test/data/models/repository/repository.dart';

abstract class RepositoryListAction {}

class LoadRepositoryListAction extends RepositoryListAction {
  final String login;

  LoadRepositoryListAction({required this.login});
}

class ShowRepositoryListAction extends RepositoryListAction {
  final List<Repository> repositories;
  final String login;

  ShowRepositoryListAction({
    required this.repositories,
    required this.login,
  });
}

class ErrorRepositoryListAction extends RepositoryListAction {
  final String error;

  ErrorRepositoryListAction({required this.error});
}
