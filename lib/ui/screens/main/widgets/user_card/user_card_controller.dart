import 'package:git_test/data/models/user/user.dart';
import 'package:git_test/domain/di/get_it_services.dart';

class UserCardController {
  final User user;
  final Function updateState;

  UserCardController({
    required this.user,
    required this.updateState,
  }) {
    followers = null;
    getFollowers();
  }

  late List<User>? followers;

  void getFollowers() async {
    followers = await getItService.userInterceptor.getFollowers(user.login);
    updateState();
  }
}
