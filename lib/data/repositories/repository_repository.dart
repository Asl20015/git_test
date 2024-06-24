import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:git_test/data/api/api.dart';
import 'package:git_test/data/api/api_routers.dart';
import 'package:git_test/data/models/answer.dart';
import 'package:git_test/data/models/repository/repository.dart';
import 'package:git_test/domain/repositories/repository_repository.dart';

class ApiRepositoryRepository implements RepositoryRepository {
  final Api _api;

  ApiRepositoryRepository({required Api api}) : _api = api;

  @override
  Future<Answer<List<Repository>>> getRepositoryUser({required String login}) async {
    try {
      final response = await _api.client.get(ApiRouters.reposUser.replaceFirst('-', login));
      final result = response.data! as List;
      final repositories = result.map((e) => Repository.fromJson(e)).toList();
      return Answer(data: repositories);
    } on DioException catch (e) {
      log('DioException: getRepositoryUser: $e');
      return Answer(error: e.message);
    }
  }
}
