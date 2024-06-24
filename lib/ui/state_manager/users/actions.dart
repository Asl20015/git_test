import 'package:git_test/data/models/user/user.dart';

abstract class UserListAction {}

class LoadUserListAction extends UserListAction {
  final String query;

  LoadUserListAction({required this.query});
}

class AddNextUserListAction extends UserListAction {
  final int page;
  final String query;

  AddNextUserListAction({
    required this.page,
    required this.query,
  });
}

class StopUserListAction extends UserListAction {}

class ShowUserListAction extends UserListAction {
  final List<User> users;
  final int page;

  ShowUserListAction({
    required this.users,
    required this.page,
  });
}

class ErrorUserListAction extends UserListAction {
  final String error;

  ErrorUserListAction({required this.error});
}
