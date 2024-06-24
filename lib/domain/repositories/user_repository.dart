import 'package:git_test/data/models/answer.dart';
import 'package:git_test/data/models/user/user.dart';

abstract class UserRepository {
  Future<Answer<List<User>>> searchListUser({
    required String query,
    required int page,
  });

  Future<Answer<List<User>>> getFollowersUser({required String login});
}
