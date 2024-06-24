import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:git_test/domain/deserializer/status_deserializer.dart';
import 'package:git_test/domain/enums/user_type.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final int id;
  final String login;
  @JsonKey(name: 'avatar_url')
  final String avatar;
  @JsonKey(name: 'html_url')
  final String url;
  @JsonKey(name: 'type')
  final String typeName;

  User({
    required this.id,
    required this.login,
    required this.avatar,
    required this.url,
    required this.typeName,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  TypeUser get type => UserTypeDeserializer().call(typeName);
}
