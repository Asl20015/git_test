import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:git_test/data/api/api.dart';
import 'package:git_test/data/api/api_routers.dart';
import 'package:git_test/data/models/answer.dart';
import 'package:git_test/data/models/user/user.dart';
import 'package:git_test/domain/repositories/user_repository.dart';

class ApiUserRepository implements UserRepository {
  final Api _api;

  ApiUserRepository({required Api api}) : _api = api;

  @override
  Future<Answer<List<User>>> searchListUser({
    required String query,
    required int page,
  }) async {
    try {
      final queryParameters = {
        'q': query,
        'page': page,
      };
      final response = await _api.client.get(
        ApiRouters.searchUser,
        queryParameters: queryParameters,
      );
      final result = response.data!['items'] as List;
      final users = result.map((e) => User.fromJson(e)).toList();
      return Answer(data: users);
    } on DioException catch (e) {
      log('DioException: getListUser: $e');
      return Answer(error: e.message);
    }
  }

  @override
  Future<Answer<List<User>>> getFollowersUser({required String login}) async {
    try {
      final response = await _api.client.get(ApiRouters.followersUser.replaceFirst('-', login));
      final result = response.data! as List;
      final users = result.map((e) => User.fromJson(e)).toList();
      return Answer(data: users);
    } on DioException catch (e) {
      log('DioException: getFollowersUser: $e');
      return Answer(error: e.message);
    }
  }
}
