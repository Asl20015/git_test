import 'package:get_it/get_it.dart';
import 'package:git_test/domain/interceprots/user_interceptor.dart';
import 'package:git_test/domain/services/navigator_service.dart';

class GetItServices {
  NavigatorService get navigatorService => GetIt.I.get<NavigatorService>();

  UserInterceptor get userInterceptor => GetIt.I.get<UserInterceptor>();
}

final getItService = GetItServices();
