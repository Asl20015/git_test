import 'package:git_test/data/models/answer.dart';
import 'package:git_test/data/models/repository/repository.dart';

abstract class RepositoryRepository {
  Future<Answer<List<Repository>>> getRepositoryUser({required String login});
}
