import 'package:dio/dio.dart';
import 'package:git_test/data/api/api_settings.dart';
import 'package:git_test/data/api/interceptor.dart';

class Api {
  late Dio _client;

  Api() {
    _client = Dio(
      BaseOptions(
        baseUrl: ApiSettings.url,
        connectTimeout: const Duration(seconds: 30),
      ),
    );

    _client.interceptors.add(AppInterceptor.base);
  }

  Dio get client => _client;
}
