import 'dart:developer';

import 'package:dio/dio.dart';

class AppInterceptor {
  static final base = InterceptorsWrapper(
    onResponse: (options, handler) {
      log('RESPONCE[${options.statusCode}]: PATH: ${options.requestOptions.path}');
      return handler.next(options);
    },
    onRequest: (RequestOptions options, handler) {
      log('REQUEST[${options.method}]: PATH: ${options.path}');
      return handler.next(options);
    },
    onError: (error, handler) {
      log('ERROR[${error.requestOptions.method}]: PATH: ${error.requestOptions.path}, MESSAGE ${error.message}');
      return handler.next(error);
    },
  );
}
