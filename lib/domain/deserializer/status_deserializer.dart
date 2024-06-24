import 'package:git_test/data/deserializer/deserializer.dart';
import 'package:git_test/domain/enums/user_type.dart';

class UserTypeDeserializer implements Deserializer<TypeUser, String> {
  @override
  call(scheme) {
    switch (scheme) {
      case 'User':
        return TypeUser.user;
      case 'Organization':
        return TypeUser.organization;
      default:
        return TypeUser.unknown;
    }
  }
}
