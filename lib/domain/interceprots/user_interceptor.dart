import 'package:git_test/data/models/user/user.dart';
import 'package:git_test/domain/repositories/user_repository.dart';

class UserInterceptor {
  final UserRepository _userRepository;

  UserInterceptor({required UserRepository userRepository}) : _userRepository = userRepository;

  Future<List<User>> getFollowers(String login) async {
    final answer = await _userRepository.getFollowersUser(login: login);
    if (answer.data == null) return [];
    return answer.data!;
  }
}
